COMMENT=	high performance implementation of lolcat
CATEGORIES=	games

V= 1.0
DISTNAME=	v${V}
PKGNAME=	lolcat-${V}
GH_TAGNAME=     ${V}
GH_ACCOUNT=     laseg
GH_PROJECT=     lolcat

WANTLIB=	c 
ALL_TARGET=	lolcat
USE_GMAKE= 	Yes

PERMIT_PACKAGE=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/lolcat ${PREFIX}/bin

.include <bsd.port.mk>
