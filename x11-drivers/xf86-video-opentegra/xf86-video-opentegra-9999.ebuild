# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
XORG_DRI="always"
inherit xorg-2

EGIT_REPO_URI="https://github.com/grate-driver/xf86-video-opentegra.git"

DESCRIPTION="X.Org video driver for NVIDIA Tegra20+"
HOMEPAGE="https://github.com/grate-driver"

KEYWORDS="arm"
VIDEO_CARDS="tegra grate"
for card in ${VIDEO_CARDS}; do
	IUSE_VIDEO_CARDS+=" video_cards_${card}"
done
IUSE="${IUSE_VIDEO_CARDS}"

RDEPEND="x11-libs/libdrm[video_cards_tegra?,video_cards_grate?]
	>=x11-base/xorg-server-1.11
	media-libs/libjpeg-turbo
	app-arch/lz4
	media-libs/libpng"
DEPEND="${RDEPEND} sys-devel/flex sys-devel/bison"
