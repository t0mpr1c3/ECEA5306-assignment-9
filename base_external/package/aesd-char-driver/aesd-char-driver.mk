
##############################################################
#
# AESD_CHAR_DRIVER
#
##############################################################

AESD_CHAR_DRIVER_VERSION = c4e8f7a
AESD_CHAR_DRIVER_SITE = git@github.com:t0mpr1c3/ECEA5305-assignments-3-and-later
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES
AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver
#AESD_CHAR_DRIVER_MODULE_SUBDIRS = .
AESD_CHAR_DRIVER_MODULE_MAKE_OPTS = -w --debug=v KERNELDIR=$(LINUX_DIR)

#define KERNEL_MODULE_BUILD_CMDS
#	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(AESD_CHAR_DRIVER_MODULE_MAKE_OPTS) -C $(@D)/$(AESD_CHAR_DRIVER_MODULE_SUBDIRS) modules
#endef

$(eval $(kernel-module))

define AESD_CHAR_DRIVER_INSTALL
	$(INSTALL) -m 0551 $(@D)/$(AESD_CHAR_DRIVER_MODULE_SUBDIRS)/aesdchar_load $(TARGET_DIR)/bin/
	$(INSTALL) -m 0551 $(@D)/$(AESD_CHAR_DRIVER_MODULE_SUBDIRS)/aesdchar_unload $(TARGET_DIR)/bin/
endef
AESD_CHAR_DRIVER_POST_BUILD_HOOKS += AESD_CHAR_DRIVER_INSTALL

$(eval $(generic-package))
