
##############################################################
#
# AESD_CHAR_DRIVER
#
##############################################################

LDD_VERSION = a3d9c99
LDD_SITE = git@github.com:t0mpr1c3/ECEA5305-assignments-3-and-later
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = aesd-char-driver
LDD_MODULE_MAKE_OPTS = -w --debug=v KERNELDIR=$(BR2_EXTERNAL_project_base_PATH)/../buildroot

define KERNEL_MODULE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(LDD_MODULE_MAKE_OPTS) -C $(@D)/$(LDD_MODULE_SUBDIRS) modules
endef

$(eval $(kernel-module))

define AESD_CHAR_DRIVER_INSTALL
	$(INSTALL) -m 0551 $(@S)/$(LDD_MODULE_SUBDIRS)/aesdchar_load $(@D)/bin/
	$(INSTALL) -m 0551 $(@S)/$(LDD_MODULE_SUBDIRS)/aesdchar_unload $(@D)/bin/
endef
AESD_CHAR_DRIVER_POST_BUILD_HOOKS += AESD_CHAR_DRIVER_INSTALL

$(eval $(generic-package))
