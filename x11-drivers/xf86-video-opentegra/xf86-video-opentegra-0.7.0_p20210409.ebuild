# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
XORG_DRI="always"
inherit xorg-3

if [[ ${PV} == 9999 ]]; then
	EGIT_REPO_URI="https://github.com/grate-driver/${PN}.git"
inherit git-r3
else

	COMMIT="ea416c553e465cc96226da5a18fcbc3065e728b3"
	SRC_URI="https://github.com/grate-driver/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~arm"
S="${WORKDIR}"/${PN}-${COMMIT}
fi

DESCRIPTION="X.Org video driver for NVIDIA Tegra20+"
HOMEPAGE="https://github.com/grate-driver"
IUSE=""

RDEPEND="
	x11-libs/libdrm[video_cards_tegra]
	>=x11-base/xorg-server-1.11
	media-libs/libjpeg-turbo
	app-arch/lz4
	media-libs/libpng
"
DEPEND="${RDEPEND}
	sys-devel/flex
	sys-devel/bison
"
