TARGET := iphone:clang:13.0:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = @@FULLPROJECTNAME@@Prefs

@@FULLPROJECTNAME@@Prefs_FILES = @@CLASSPREFIX@@RootListController.m
@@FULLPROJECTNAME@@Prefs_FRAMEWORKS = UIKit
@@FULLPROJECTNAME@@Prefs_PRIVATE_FRAMEWORKS = Preferences
@@FULLPROJECTNAME@@Prefs_INSTALL_PATH = /Library/PreferenceBundles
@@FULLPROJECTNAME@@Prefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
