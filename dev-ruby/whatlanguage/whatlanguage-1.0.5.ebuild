# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Fast text language detection for Ruby"
HOMEPAGE="https://github.com/peterc/whatlanguage"
SRC_URI="https://github.com/peterc/whatlanguage/archive/v1.0.5.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""