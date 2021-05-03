 # Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="A configuration for portage to make the insatll from grate easy"
HOMEPAGE="https://github.com/grate-driver"

KEYWORDS="~arm"

SRC_URI=""

LICENSE="GPL-2+"
SLOT="0"
IUSE=""

#portage-bashrc-mv can be obtained from mv overlay
DEPEND="
	sys-apps/portage
"
RDEPEND="${DEPEND}"

#checking dirs
pkg_setup() {

	if [ -f "${PORTAGE_CONFIGROOT%/}/etc/portage/profile" ]; then
		eerror "${PORTAGE_CONFIGROOT%/}/etc/portage/profile is a file not a directory.  Please convert profile to a directory with the current contents of profile being moved to a file inside it."
		die
	fi
}
pkg_preinst() {
	GENTOOLTO_PORTDIR=$(portageq get_repo_path ${PORTAGE_CONFIGROOT} grate-overlay)
	GRATE_PORTAGE_DIR="${GENTOOLTO_PORTDIR}/${CATEGORY}/${PN}/files"

	COMMON_OVERRIDES=(
		use.mask
	)
	
	#Install main workarounds files
	for i in "${COMMON_OVERRIDES[@]}"; do
		elog "Installing ${i} override"
		dosym "${GRATE_PORTAGE_DIR}/profile/${i}" "${PORTAGE_CONFIGROOT%/}/etc/portage/profile/${i}"
	done
}

pkg_postinst()
{
	elog "Grate have added "${PORTAGE_CONFIGROOT%/}/etc/portage/profile/${i}" override to the system"
}
