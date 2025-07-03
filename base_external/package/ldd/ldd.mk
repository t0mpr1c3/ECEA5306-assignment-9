
##############################################################
#
# LDD
#
##############################################################

LDD_VERSION = '5c3cae6ddc96b8645dfa6f6bc4ddbba08aae8789a'
LDD_SITE = 'git@github.com:cu-ecen-aeld/ldd3.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
KERNEL_OPTS = "KERNELDIR=../buildroot"

define LDD_BUILD_CMDS
	echo "D" ${D}
	echo "K" $(KERNELDIR)
	cd ${D}/misc-modules
	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(KERNEL_OPTS) modules
	cd ${D}/scull
	$(MAKE) $(TARGET_CONFIGURE_OPTS) $(KERNEL_OPTS) modules
endef

$(eval $(generic-package))
