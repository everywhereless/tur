TERMUX_PKG_HOMEPAGE=https://codeberg.org/ravachol/kew
TERMUX_PKG_DESCRIPTION="A terminal music player for Linux"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@everywhereless"
TERMUX_PKG_VERSION="4.0.0"
TERMUX_PKG_SRCURL="https://github.com/ravachol/kew/archive/refs/tags/v${TERMUX_PKG_VERSION}.tar.gz"
TERMUX_PKG_SHA256=6162d87db4013b0611eafb2b0ec1c7882d28b8d703dc9593dc38a3ad2e88f787
TERMUX_PKG_DEPENDS="taglib, fftw, chafa, glib, libopus, opusfile, libvorbis, libogg, dbus"
TERMUX_PKG_BUILD_DEPENDS="pkg-config"

termux_step_make() {
	make -j "$TERMUX_PKG_MAKE_PROCESSES"
}

termux_step_make_install() {
	make install PREFIX="$TERMUX_PREFIX"
}
