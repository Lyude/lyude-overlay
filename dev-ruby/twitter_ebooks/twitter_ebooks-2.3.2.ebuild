# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

inherit ruby-fakegem

DESCRIPTION="Framework for writing ebooks bots for Twitter"
HOMEPAGE="https://github.com/mispy/twitter_ebooks"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RUBY_S="${P}"

ruby_add_rdepend "
	dev-ruby/twitter:4
	dev-ruby/highscore
	dev-ruby/gingerice
	dev-ruby/rufus-scheduler
	dev-ruby/fast-stemmer
	dev-ruby/engtagger
	dev-ruby/htmlentities
	>=dev-ruby/eventmachine-1.0.3
	=dev-ruby/simple_oauth-0.2.0*
	dev-ruby/tweetstream"

src_prepare() {
	ruby-ng_src_prepare
	# Some of the directories that are installed come with .gitignore, which we
	# don't need being installed onto the host's system
	find . -name '.gitignore' -delete
}

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins -r skeleton data
}

