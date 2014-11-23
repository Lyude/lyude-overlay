# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

MY_P="bloomfilter-rb-${PV}"
RUBY_FAKEGEM_NAME="bloomfilter-rb"

inherit multilib ruby-fakegem

DESCRIPTION="Bloom Filter implementation for Ruby"
HOMEPAGE="https://github.com/igrigorik/bloomfilter-rb"
SRC_URI="https://github.com/igrigorik/bloomfilter-rb/archive/v2.1.1.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""

ruby_add_rdepend "dev-ruby/redis"

RUBY_S="${MY_P}"

each_ruby_configure() {
	${RUBY} -Cext/cbloomfilter extconf.rb || die
}

each_ruby_compile() {
	emake -Cext/cbloomfilter V=1
	cp ext/cbloomfilter/cbloomfilter$(get_modname) lib/ || die
}
