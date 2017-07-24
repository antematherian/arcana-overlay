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

RDEPEND="dev-lang/python:3"

src_unpack() {
	if [ ${PV} == "9999" ] ; then
		git-r3_src_unpack
	else
		unpack ${A}
	fi
}

src_install() {
	exeinto /usr/share/arcana/modules/${PN}/${PV}/
	doexe $S/modules/*
	dosym ../share/arcana/modules/${PN}/${PV}/arczero /usr/sbin/arczero
}

