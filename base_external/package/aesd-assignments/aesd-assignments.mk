
##############################################################
#
# AESD_ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = a74c7af1894aeebaf53972bb5d02d8440932bcd6
AESD_ASSIGNMENTS_SITE = git@github.com:t0mpr1c3/ECEA5305-assignment-5
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
