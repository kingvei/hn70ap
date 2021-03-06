/****************************************************************************
 * hn70ap/apps/sysdaemon/sysdaemon_main.c
 *
 *   Copyright (C) 2008, 2011-2012 Gregory Nutt. All rights reserved.
 *   Author: Gregory Nutt <gnutt@nuttx.org>
 *   Copyright (C) 2018 Sebastien Lorquet. All rights reserved.
 *   Author: Sebastien Lorquet <sebastien@lorquet.fr>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name NuttX nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

/****************************************************************************
 * Included Files
 ****************************************************************************/

#include <nuttx/config.h>
#include <stdio.h>

#include <sys/mount.h>

#include <hn70ap/system.h>
#include <hn70ap/leds.h>
#include <hn70ap/eeprom.h>
#include <hn70ap/lcd.h>
#include <hn70ap/radio.h>

#include "sysdaemon_internal.h"

int nsh_main(int argc, char **argv);

/****************************************************************************
 * Public Functions
 ****************************************************************************/

void hn70ap_mount_storage(void)
{
  int ret;

#ifdef CONFIG_FS_SMARTFS
  ret = mount("/dev/smart0p1", "/data", "smartfs", 0, NULL);
  if (ret < 0)
    {
      fprintf(stderr, "WARNING Storage could not be mounted.\n"
                      "Try running mksmartfs /dev/smart0p1\n");
    }
  else
    {
      printf("Mass Storage mounted at /data\n");
    }
#endif

#ifdef CONFIG_FS_PROCFS
  ret = mount(NULL, "/proc", "procfs", 0, NULL);
  if (ret < 0)
    {
      fprintf(stderr, "Failed to mount /proc\n");
    }
  else
    {
      printf("Mounted /proc\n");
    }
#endif
}

/****************************************************************************
 * sysdaemon_radiocallback
 ****************************************************************************/
uint8_t radiobuf[512];

int sysdaemon_radiocallback(uint8_t device, FAR void *arg, FAR uint8_t *data, int length)
{
  printf("RADIORX len %d\n", length);
  return OK;
}

/****************************************************************************
 * sysdaemon_main
 ****************************************************************************/

#ifdef CONFIG_BUILD_KERNEL
int main(int argc, FAR char *argv[])
#else
int sysdaemon_main(int argc, char *argv[])
#endif
{
  int  ret;
  char call[9];

  printf("\nhn70ap system daemon starting\n");

  ret = hn70ap_system_init();
  hn70ap_mount_storage();
  hn70ap_netmonitor_init();

  hn70ap_leds_state(LED_GREEN, LED_STATE_ON);
  if(ret != OK)
    {
      hn70ap_leds_state(LED_RED, LED_STATE_ON);
    }

  hn70ap_eeconfig_getcall("call", call);
  if(call[0] == 0)
    {
      printf("Callsign not defined yet, please use the config tool\n");
    }
  else
    {
      call[8] = 0;
      printf("Hello %s, best 73's\n", call);
    }

  /* Try to open radio devices. */
  ret = hn70ap_radio_rxfunction(HN70AP_RADIO_AUX, sysdaemon_radiocallback, NULL, radiobuf, sizeof(radiobuf));
  if(ret == 0)
    {
      printf("aux radio cb installed ok\n");
    }

#if defined(CONFIG_SYSTEM_NSH)
  printf("*** Launching nsh\n");
  nsh_main(argc, argv);
#endif

  printf("Back from nsh, now sleeping forever.\n");
  hn70ap_leds_state(LED_GREEN, LED_STATE_OFF);
  hn70ap_leds_state(LED_RED  , LED_STATE_ON);
  return 0;
}

