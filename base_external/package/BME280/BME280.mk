
##############################################################
#
# BME280
#
##############################################################

BME280_VERSION = '3a11de952c4f1ea4a031dea5fbd660c1e016a34e'
BME280_SITE = 'git@github.com:AshwiniCUB/final-project-aesd.git'
BME280_SITE_METHOD = git
BME280_GIT_SUBMODULES = YES

define BME280_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/BME280 all
endef


define BME280_INSTALL_TARGET_CMDS
	 $(INSTALL) -m 0755 $(@D)/BME280/bme280 $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
