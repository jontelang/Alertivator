include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Alertivator
Alertivator_FILES = Tweak.xm
Alertivator_LIBRARIES = activator

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
