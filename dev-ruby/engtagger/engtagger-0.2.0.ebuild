# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="English Part-of-Speech Tagger Library"
HOMEPAGE="https://github.com/yohasebe/engtagger"
SRC_URI="https://github.com/yohasebe/engtagger/archive/v0.2.0.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
