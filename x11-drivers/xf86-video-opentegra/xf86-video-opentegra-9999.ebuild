# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/xf86-video-nouveau/xf86-video-nouveau-1.0.11.ebuild,v 1.1 2014/10/23 15:01:49 chithanh Exp $

EAPI=5
XORG_DRI="always"
XORG_EAUTORECONF=yes
inherit xorg-2

if [[ ${PV} == 9999* ]]; then
#	EGIT_REPO_URI="git://anongit.freedesktop.org/xorg/driver/xf86-video-opentegra/"
	EGIT_REPO_URI="https://github.com/grate-driver/xf86-video-opentegra.git"
	SRC_URI=""
fi

DESCRIPTION="Accelerated Open Source driver for nVidia cards"
HOMEPAGE="http://nouveau.freedesktop.org/"

KEYWORDS="~arm"
IUSE=""

RDEPEND=">=x11-libs/libdrm-2.4.34[libkms]"
DEPEND="${RDEPEND}"

src_configure() {
	xorg-2_src_configure
}
