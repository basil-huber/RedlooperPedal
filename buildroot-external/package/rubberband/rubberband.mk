################################################################################
#
# rubberband
#
################################################################################

RUBBERBAND_VERSION = 2.0.0
RUBBERBAND_SOURCE = v$(RUBBERBAND_VERSION).tar.gz
RUBBERBAND_SITE = $(call github,breakfastquay,rubberband,v$(RUBBERBAND_VERSION))
RUBBERBAND_LICENSE = GPL-2.0
RUBBERBAND_LICENSE_FILES = COPYING
RUBBERBAND_INSTALL_STAGING = YES

$(eval $(meson-package))