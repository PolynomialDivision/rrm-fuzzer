#
# Copyright (C) 2013-2017 OpenWrt.org
#
include $(TOPDIR)/rules.mk

PKG_NAME:=rrm-fuzzer
PKG_VERSION:=2020.10.10
PKG_RELEASE:=1

PKG_MAINTAINER:=Nick Hainke <vincent@systemli.org>

include $(INCLUDE_DIR)/package.mk

Build/Compile=

define Package/rrm-fuzzer
  SECTION:=utils
  CATEGORY:=Utilities
  TITLE:=RRM Fuzzer
  DEPENDS:=+lua +luabitop +libubus-lua
  PKGARCH:=all
endef

define Package/rrm-fuzzer/description
  RRM Fuzzer.
endef

define Package/rrm-fuzzer/install
	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) ./rrm-fuzzer.lua $(1)/usr/sbin/rrm-fuzzer
endef

$(eval $(call BuildPackage,rrm-fuzzer))
