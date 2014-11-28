# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Twitter Streaming API client for EventMachine"
HOMEPAGE="https://github.com/tweetstream/em-twitter"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~ppc ~ppc64 ~arm ~hppa ~ia64 ~m68k ~mips ~s390 ~sh ~sparc"
IUSE=""

ruby_add_rdepend "
	>=dev-ruby/buftok-0.2
	>=dev-ruby/eventmachine-1.0
	>=dev-ruby/http_parser_rb-0.6
	=dev-ruby/simple_oauth-0.2*"
