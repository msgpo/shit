COMMENT=	lightweight compositor for x11 (fork of compton)
CATEGORIES=	x11
NAME=	picom

V= 7.5
DISTNAME=	${NAME}-${V}
PKGNAME=	${NAME}-${V}

# -----------------------------------------------------------------
#GH_TAGNAME=     ${V}
#GH_ACCOUNT=     yshui
#GH_PROJECT=     ${NAME}

# this repo is bugged w/ the $GH_ vars for some reason, 404s
DISTFILES= v7.5
MASTER_SITES=	https://codeload.github.com/yshui/picom/tar.gz/
# -----------------------------------------------------------------

WANTLIB += GL X11 Xcomposite Xdamage Xext Xfixes Xinerama Xrandr
WANTLIB += Xrender c m pthread

PERMIT_PACKAGE=	Yes

BUILD_DEPENDS += devel/meson devel/uthash devel/libev devel/pcre x11/libxdg-basedir
RUN_DEPENDS   += devel/libconfig

do-build:
	cd ${WRKSRC} && \
	sed -i "s|dbus.*.true|dbus', type: 'boolean', value: false|" meson_options.txt && \
	LDFLAGS="-L/usr/local/lib" \
	CPPFLAGS="-I/usr/local/include -D__STDC_NO_THREADS__" \
	meson --buildtype=release . build && \
	ninja -C build

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/src/${NAME} ${PREFIX}/bin

.include <bsd.port.mk>
