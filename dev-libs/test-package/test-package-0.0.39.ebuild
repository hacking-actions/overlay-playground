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

KEYWORDS="~alpha amd64 arm arm64 hppa ia64 m68k ~mips ppc ppc64 ~riscv s390 sh sparc x86 ~amd64-linux ~x86-linux"
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
