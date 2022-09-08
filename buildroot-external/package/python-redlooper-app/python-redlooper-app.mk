################################################################################
#
# python-redlooper-app
#
################################################################################

PYTHON_REDLOOPER_APP_VERSION = v0.1.0
PYTHON_REDLOOPER_APP_SITE = $(call github,basil-huber,RedlooperApp,$(PYTHON_REDLOOPER_APP_VERSION))
PYTHON_REDLOOPER_APP_SETUP_TYPE = setuptools
PYTHON_REDLOOPER_APP_LICENSE = MIT

$(eval $(python-package))
