# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils autotools-utils gnome2-utils vala

DESCRIPTION="Native GTK+3 Twitter client"
HOMEPAGE="http://corebird.baedert.org/"
SRC_URI="https://github.com/baedert/corebird/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""
IUSE="debug glade gstreamer"
KEYWORDS="~x86 ~amd64"

RDEPEND=">=x11-libs/gtk+-3.12
	>=dev-libs/glib-2.40
	>=net-libs/rest-0.7.91
	dev-libs/json-glib
	x11-libs/libnotify
	dev-db/sqlite:3
	>=net-libs/libsoup-2.42.3.1
	>=dev-libs/libgee-0.8
	gstreamer? ( media-libs/gst-plugins-base )"
DEPEND="${RDEPEND}
	dev-lang/vala:0.24"
VALA_MIN_API_VERSION="0.24"

AUTOTOOLS_IN_SOURCE_BUILD=1

src_prepare() {
	vala_src_prepare
	eautoreconf
}

src_configure() {
	local myeconfargs=(
		"--disable-schemas-compile"
		$(use_enable debug)
		$(use_enable glade catalog)
		$(use_enable gstreamer video)
	)
	autotools-utils_src_configure
}

src_compile() {
	autotools-utils_src_compile
}

src_install() {
	autotools-utils_src_install
}

pkg_preinst() {
	gnome2_icon_savelist
	gnome2_schemas_savelist
}

update_caches() {
	gnome2_schemas_update
	gnome2_icon_cache_update
}

pkg_postinst() {
	update_caches
}

pkg_postrm() {
	update_caches
}
