COMMENT=	convert raw text files to pdf
CATEGORIES=	textproc

NAME=	text2pdf
V= 1.1
PKGNAME=	${NAME}-${V}

WANTLIB=	c
PERMIT_PACKAGE=	Yes

DISTFILES= text2pdf.c
MASTER_SITES=	http://eprg.org/pdfcorner/text2pdf/

do-extract:
	cp ${DISTDIR}/${DISTFILES} ${WRKDIR}/

do-build:
	cd ${WRKSRC} && \
	${CC} ${CFLAGS} ${NAME}.c -o ${NAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${NAME} ${PREFIX}/bin

.include <bsd.port.mk>
