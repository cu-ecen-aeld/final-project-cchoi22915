##############################################################
#
# GPIO
#
##############################################################


GPIO_VERSION = 3be8f56653c68088518d8e7c7f3ca225a6213626

# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
GPIO_SITE = git@github.com:cchoi22915/buildroot-aesd-application.git
GPIO_SITE_METHOD = git
GPIO_GIT_SUBMODULES = YES

define GPIO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/gpio all
endef


define GPIO_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/gpio/gpio $(TARGET_DIR)/usr/bin

endef

$(eval $(generic-package))
