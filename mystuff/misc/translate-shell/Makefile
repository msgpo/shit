COMMENT=	command-line translator utility
CATEGORIES=	misc

V= 0.9.6.11
DISTNAME=	v${V}
PKGNAME=	translate-shell-${V}
GH_TAGNAME=     v${V}
GH_ACCOUNT=     soimort
GH_PROJECT=     translate-shell

ALL_TARGET= 	release

BUILD_DEPENDS+=  lang/gawk
RUN_DEPENDS+=    lang/gawk shells/bash

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/build/trans ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/man/trans.1 ${PREFIX}/man/man1

PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
