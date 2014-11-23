# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Job scheduler for Ruby"
HOMEPAGE="https://github.com/jmettraux/rufus-scheduler"
SRC_URI="https://github.com/jmettraux/rufus-scheduler/archive/v3.0.9.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""

ruby_add_rdepend "dev-ruby/tzinfo"
