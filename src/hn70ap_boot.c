/*******************************************************************************
 * configs/hn70ap/src/stm32_boot.c
 *
 *   Copyright (C) 2011-2012, 2015-2016 Gregory Nutt. All rights reserved.
 *   Author: Gregory Nutt <gnutt@nuttx.org>
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
 ******************************************************************************/

/*******************************************************************************
 * Included Files
 ******************************************************************************/

#include <nuttx/config.h>

#include <debug.h>

#include <nuttx/board.h>
#include <arch/board/board.h>

#if defined(CONFIG_VIDEO_FB)
#include <nuttx/video/fb.h>
#endif

#include "up_arch.h"
#include "hn70ap.h"
#include "stm32_ccm.h"

/*******************************************************************************
 * Pre-processor Definitions
 ******************************************************************************/

/* Configuration **************************************************************/

/*******************************************************************************
 * Public Functions
 ******************************************************************************/

/*******************************************************************************
 * Name: stm32_boardinitialize
 *
 * Description:
 *   All STM32 architectures must provide the following entry point.  This entry
 *   point is called early in the initialization -- after all memory has been
 *   configured and mapped but before any devices have been initialized.
 *
 ******************************************************************************/

void stm32_boardinitialize(void)
{
#ifdef CONFIG_HN70AP_HWDEBUG_BLINK
  int state = 0;
#endif

  /* Configure hardware */
  hn70ap_spi_initialize();
  hn70ap_leds_initialize();

#ifdef HAVE_CCM_HEAP
  /* Initialize CCM allocator */

  ccm_initialize();
#endif

#ifdef CONFIG_HN70AP_HWDEBUG_BLINK
  /* Configuration is just a hardware debug helper for blinking the leds.
     We wont go farther than this loop. */

  while(1)
    {
      stm32_gpiowrite(GPIO_LED_HEARTBEAT, state);
      state = !state;
      stm32_gpiowrite(GPIO_LED_CPUACT, state);
      up_mdelay(1000);
    }
#endif

}

/****************************************************************************
 * Name: board_initialize
 *
 * Description:
 *   If CONFIG_BOARD_INITIALIZE is selected, then an additional
 *   initialization call will be performed in the boot-up sequence to a
 *   function called board_initialize().  board_initialize() will be
 *   called immediately after up_initialize() is called and just before the
 *   initial application is started.  This additional initialization phase
 *   may be used, for example, to initialize board-specific device drivers.
 *
 ****************************************************************************/
#ifndef CONFIG_BOARD_INITIALIZE
#error please enable CONFIG_BOARD_INITIALIZE
#endif

void board_initialize(void)
{
  int ret;

#if defined(CONFIG_HN70AP_SPIFLASH)
  ret = hn70ap_flash_initialize();
  if (ret < 0)
    {
      syslog(LOG_ERR, "ERROR: flash init failed: %d\n", ret);
    }
#endif

#if defined(CONFIG_HN70AP_EEPROM)
  ret = hn70ap_eeprom_initialize();
  if (ret < 0)
    {
      syslog(LOG_ERR, "ERROR: eeprom init failed: %d\n", ret);
    }
#endif

#if defined(CONFIG_HN70AP_SCREEN)
  /* Initialize and register the framebuffer driver */

  ret = fb_register(0, 0);
  if (ret < 0)
    {
      syslog(LOG_ERR, "ERROR: screen init failed: %d\n", ret);
    }
#endif

#if defined(CONFIG_HN70AP_RADIO)
  ret = hn70ap_genradio_initialize();
  if (ret < 0)
    {
      syslog(LOG_ERR, "ERROR: radio init failed: %d\n", ret);
    }
#endif

  (void)ret;
}
