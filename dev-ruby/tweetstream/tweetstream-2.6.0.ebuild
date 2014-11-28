# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="A simple wrapper for consuming the Twitter Streaming API"
HOMEPAGE="https://github.com/tweetstream/tweetstream"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""

ruby_add_rdepend "
	=dev-ruby/twitter-4.8*
	>=dev-ruby/daemons-1.1
	>=dev-ruby/em-http-request-1.1.1
	>=dev-ruby/em-twitter-0.3
	>=dev-ruby/multi_json-1.3
"
