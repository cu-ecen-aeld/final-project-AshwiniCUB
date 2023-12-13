
##############################################################
#
# BME280
#
##############################################################

BME280_VERSION = 'a88838a779b29e20e121ec3c765332bc86757e63'
BME280_SITE = 'git@github.com:AshwiniCUB/final-project-aesd.git'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

define BME280_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/bme280 all
endef


define BME280_INSTALL_TARGET_CMDS
	 $(INSTALL) -m 0755 $(@D)/bme280/bme280 $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
