################################################################################
#
# python-pyliblo
#
################################################################################

PYTHON_PYLIBLO_VERSION = 0.10.0
PYTHON_PYLIBLO_SITE = $(call github,dsacre,pyliblo,$(PYTHON_PYLIBLO_VERSION))
PYTHON_PYLIBLO_SETUP_TYPE = setuptools

$(eval $(python-package))
