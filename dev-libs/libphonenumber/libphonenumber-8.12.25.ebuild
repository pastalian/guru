# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

CMAKE_MAKEFILE_GENERATOR=emake

inherit cmake java-pkg-2 java-pkg-simple

DESCRIPTION="library for parsing, formatting, and validating international phone numbers"
HOMEPAGE="https://github.com/google/libphonenumber"
SRC_URI="https://github.com/google/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

KEYWORDS="~amd64 ~arm64"

LICENSE="Apache-2.0"
SLOT="0"

DEPEND="
	dev-libs/icu
	dev-libs/protobuf
	dev-libs/boost
"
RDEPEND="${DEPEND}"

BDEPEND="
	dev-cpp/gtest
	virtual/jdk
"

RESTRICT+=" test" # test is broken

CMAKE_USE_DIR="${S}"/cpp
