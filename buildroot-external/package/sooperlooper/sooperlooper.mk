################################################################################
#
# python-libscrc
#
################################################################################

SOOPERLOOPER_VERSION = 1.7.8
SOOPERLOOPER_SOURCE = v$(SOOPERLOOPER_VERSION).tar.gz
SOOPERLOOPER_SITE = $(call github,essej,sooperlooper,v$(SOOPERLOOPER_VERSION))
SOOPERLOOPER_LICENSE = GPL20
SOOPERLOOPER_LICENSE_FILES = LICENSE

SOOPERLOOPER_CONF_OPTS += --without-gui

define SOOPERLOOPER_RUN_AUTOGEN
	cd $(@D) && PATH=$(BR_PATH) ./autogen.sh
endef
SOOPERLOOPER_PRE_CONFIGURE_HOOKS += SOOPERLOOPER_RUN_AUTOGEN

$(eval $(autotools-package))
