################################################################################
#
# libsigc
#
################################################################################

LIBSIGC2_VERSION_MAJOR = 2.10
LIBSIGC2_VERSION = $(LIBSIGC2_VERSION_MAJOR).6
LIBSIGC2_SOURCE = libsigc++-$(LIBSIGC2_VERSION).tar.xz
LIBSIGC2_SITE = http://ftp.gnome.org/pub/GNOME/sources/libsigc++/$(LIBSIGC2_VERSION_MAJOR)
LIBSIGC2_INSTALL_STAGING = YES
LIBSIGC2_LICENSE = LGPL-2.1+
LIBSIGC2_LICENSE_FILES = COPYING
LIBSIGC2_CONF_OPTS = \
	-Dbuild-examples=false \
	-Dvalidation=false

$(eval $(meson-package))
