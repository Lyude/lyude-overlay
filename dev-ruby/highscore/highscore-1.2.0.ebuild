# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Easily find and rank keywords in long texts"
HOMEPAGE="https://github.com/domnikl/highscore"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""

ruby_add_rdepend "
	>=dev-ruby/whatlanguage-1.0.0
	>=dev-ruby/bloomfilter-2.1.1"

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins version.txt
}
