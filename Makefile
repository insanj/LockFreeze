THEOS_PACKAGE_DIR_NAME = debs
TARGET = :clang
ARCHS = armv7 arm64

TWEAK_NAME = LockFreeze
LockFreeze_FILES = LockFreeze.xm
LockFreeze_FRAMEWORKS = UIKit CoreGraphics

include theos/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk

internal-after-install::
	install.exec "killall -9 backboardd"