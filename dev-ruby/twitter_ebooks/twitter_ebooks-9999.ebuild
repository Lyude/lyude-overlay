# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
USE_RUBY="ruby19 ruby20 ruby21"

EGIT_REPO_URI="https://github.com/mispy/twitter_ebooks.git"

inherit ruby-fakegem git-r3

# This is a git ebuild, we shouldn't have a SRC_URI
SRC_URI=""

DESCRIPTION="Framework for writing ebooks bots for Twitter"
HOMEPAGE="https://github.com/mispy/twitter_ebooks"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

RUBY_S="${P}"

ruby_add_rdepend "
	dev-ruby/twitter:5
	dev-ruby/highscore
	dev-ruby/gingerice
	dev-ruby/rufus-scheduler
	dev-ruby/fast-stemmer
	dev-ruby/engtagger
	dev-ruby/htmlentities
	>=dev-ruby/eventmachine-1.0.3
	dev-ruby/simple_oauth"

src_unpack() {
	git-r3_src_unpack
	ruby-ng_src_unpack

	# Move the files we got from git to the proper ruby directory
	mv ${WORKDIR}/${P} ${WORKDIR}/all/
}

src_prepare() {
	ruby-ng_src_prepare
	# Some of the directories that are installed come with .gitignore, which we
	# don't need being installed onto the host's system
	find . -name '.gitignore' -delete
}

each_ruby_install() {
	each_fakegem_install
	ruby_fakegem_doins -r skeleton
}

