################################################################################
#
# python-jackclient
#
################################################################################

PYTHON_JACKCLIENT_VERSION = 0.5.4
PYTHON_JACKCLIENT_SITE = $(call github,spatialaudio,jackclient-python,$(PYTHON_JACKCLIENT_VERSION))
PYTHON_JACKCLIENT_SETUP_TYPE = distutils
PYTHON_JACKCLIENT_LICENSE = MIT

PYTHON_JACKCLIENT_DEPENDENCIES = host-python-cffi

$(eval $(python-package))
