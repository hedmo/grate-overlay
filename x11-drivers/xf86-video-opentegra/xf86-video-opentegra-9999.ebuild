# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/x11-drivers/xf86-video-nouveau/xf86-video-nouveau-1.0.11.ebuild,v 1.1 2014/10/23 15:01:49 chithanh Exp $

EAPI=5

inherit xorg-2

EGIT_REPO_URI="https://github.com/grate-driver/xf86-video-opentegra.git"

DESCRIPTION="X.Org video driver for NVIDIA Tegra20"
HOMEPAGE="https://github.com/grate-driver"

KEYWORDS="arm"
IUSE=""

RDEPEND="x11-libs/libdrm[video_cards_tegra]
	>=x11-base/xorg-server-1.11"
DEPEND="${RDEPEND}"

