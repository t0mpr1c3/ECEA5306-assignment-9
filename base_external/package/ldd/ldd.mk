
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = 5caa8d4
LDD_SITE = git@github.com:t0mpr1c3/ECEA5306-assignment-7
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS = misc-modules scull
LDD_MODULE_MAKE_OPTS = -w --debug=v KERNELDIR=$(BR2_EXTERNAL_project_base_PATH)/../buildroot KR='$(KERNELRELEASE)'

define KERNEL_MODULE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(LDD_MODULE_MAKE_OPTS) -C $(@D)/$(LDD_MODULE_SUBDIRS) modules
endef

$(eval $(kernel-module))
$(eval $(generic-package))
