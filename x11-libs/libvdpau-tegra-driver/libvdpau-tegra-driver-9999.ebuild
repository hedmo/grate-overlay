# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

XORG_MULTILIB=yes
inherit xorg-2

DESCRIPTION="HW video decode support for Tegra"
HOMEPAGE="https://github.com/grate-driver/libvdpau-tegra"
EGIT_REPO_URI="https://github.com/grate-driver/libvdpau-tegra.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~arm"
IUSE=""

RDEPEND=">=x11-libs/libvdpau-1.8.0
	>=x11-libs/libdrm-2.4.46[video_cards_tegra]
	x11-libs/libX11
	x11-libs/libXext
	x11-libs/libXfixes
	x11-libs/libXv
	xorg-drivers[opentegra]
"
DEPEND="${RDEPEND}
	virtual/pkgconfig"

src_prepare() {
	xorg-2_src_prepare
	epatch_user
}

src_configure() {
	xorg-2_src_configure
}
