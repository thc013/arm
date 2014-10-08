# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/sys-kernel/raspberrypi-sources/raspberrypi-sources-3.14.9999.ebuild,v 1.1 2014/08/29 21:24:28 xmw Exp $

EAPI=5

ETYPE=sources
K_DEFCONFIG="bcmrpi_defconfig"
K_SECURITY_UNSUPPORTED=1
EXTRAVERSION="-${PN}/-*"
inherit kernel-2
detect_version
detect_arch

inherit git-2 versionator
EGIT_REPO_URI=https://github.com/adafruit/adafruit-raspberrypi-linux.git
EGIT_PROJECT="adafruit-raspberrypi-linux.git"
EGIT_BRANCH="rpi-$(get_version_component_range 1-2).y"
EGIT_HAS_SUBMODULES="1"

DESCRIPTION="Raspberry PI kernel sources with Adafruit patches"
HOMEPAGE="https://github.com/adafruit"

KEYWORDS=""

src_unpack() {
	git-2_src_unpack
	unpack_set_extraversion
}
