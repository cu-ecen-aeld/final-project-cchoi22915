##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHARDRIVER_VERSION = 6660630d7d129b4072d9fa4e7a8722902a4eb019
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHARDRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-cchoi22915
AESDCHARDRIVER_SITE_METHOD = git
AESDCHARDRIVER_GIT_SUBMODULES = YES
AESDCHARDRIVER_MODULE_SUBDIRS = aesd-char-driver/

define AESDCHARDRIVER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
	

endef

$(eval $(kernel-module))
$(eval $(generic-package))
