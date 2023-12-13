
##############################################################
#
# BME280
#
##############################################################

FINAL_VERSION = 'a88838a779b29e20e121ec3c765332bc86757e63'
FINAL_SITE = 'git@github.com:AshwiniCUB/final-project-aesd.git'
FINAL_SITE_METHOD = git
FINAL_GIT_SUBMODULES = YES

define FINAL_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/final all
endef


define FINAL_INSTALL_TARGET_CMDS
	 $(INSTALL) -m 0755 $(@D)/final/final_code $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
