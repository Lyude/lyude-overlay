# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Ruby wrapper of Ginger Proofreader"
HOMEPAGE="https://github.com/subosito/gingerice"
SRC_URI="https://github.com/subosito/gingerice/archive/v1.2.2.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""
