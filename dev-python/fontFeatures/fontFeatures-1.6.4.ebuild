# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{8..9} )

inherit distutils-r1

DESCRIPTION="Python library for manipulating OpenType font features"
HOMEPAGE="https://github.com/simoncozens/fontFeatures"
SRC_URI="https://github.com/simoncozens/fontFeatures/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"
LICENSE="MIT"
SLOT="0"

RDEPEND="
	dev-python/fs[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]
	>=dev-python/fonttools-4.28.0[${PYTHON_USEDEP}]
	>=dev-python/glyphtools-0.7.0[${PYTHON_USEDEP}]
	>=dev-python/beziers-0.1.0[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
BDEPEND="
	test? (
		>=dev-python/youseedee-0.3.0[${PYTHON_USEDEP}]
		>=dev-python/babelfont-3.0.0_alpha1[${PYTHON_USEDEP}]
	)
"

distutils_enable_tests pytest
