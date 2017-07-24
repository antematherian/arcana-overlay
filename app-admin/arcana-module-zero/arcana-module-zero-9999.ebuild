# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION="Arcana portage-tree sanity check module"
HOMEPAGE="https://github.com/antematherian/arcana-module-zero"

if [ ${PV} == 9999 ] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/antematherian/arcana-module-zero"
else
	SRC_URI="https://github.com/antematherian/arcana-module-zero/archive/${P}.tar.gz"
	KEYWORDS="*"
fi

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="*"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
