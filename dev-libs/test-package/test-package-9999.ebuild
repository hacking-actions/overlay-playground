# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="A testing package"
HOMEPAGE="https://github.com/hacking-actions/test-package"
LICENSE="MIT"

if [[ ${PV} = *9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/hacking-actions/test-package"
	EGIT_BRANCH="master"
else
	SRC_URI="https://github.com/hacking-actions/test-package/archive/${PV}.tar.gz -> ${P}.tar.gz"
fi

KEYWORDS=""
IUSE="test"
SLOT="0"

RESTRICT="!test? ( test )"

RDEPEND="sys-apps/util-linux"
DEPEND="test? ( ${RDEPEND} )"

src_test() {
	echo
}

src_install() {
	einstalldocs
}
