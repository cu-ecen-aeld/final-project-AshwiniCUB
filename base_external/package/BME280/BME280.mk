
##############################################################
#
# BME280
#
##############################################################

BME280_VERSION = 'f60ce73c29dce25f9dd6bbd569c3de284b32084c'
BME280_SITE = 'git@github.com:AshwiniCUB/final-project-aesd.git'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

define BME280_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/measure all
endef


define BME280_INSTALL_TARGET_CMDS
	 $(INSTALL) -m 0755 $(@D)/BME280/bme280 $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
