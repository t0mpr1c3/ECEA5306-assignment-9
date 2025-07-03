
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = d884979ba185c36faab91b4c76c3c60f810f7c6a
LDD_SITE = git@github.com:t0mpr1c3/ECEA5306-assignment-7
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

define LDD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull
endef

define LDD_INSTALL_TARGET_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/misc-modules modules_install
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/scull modules_install
endef

$(eval $(kernel-module))
$(eval $(generic-package))
