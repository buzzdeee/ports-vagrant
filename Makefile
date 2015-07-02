# $OpenBSD$

COMMENT =	Virtual machine management environment

VERSION =		1.7.2
GH_ACCOUNT=             mitchellh
GH_PROJECT=             vagrant
GH_TAGNAME=             v${VERSION}
DISTNAME=               ${GH_TAGNAME}
PKGNAME=		ruby21-vagrant-${VERSION}

CATEGORIES =    sysutils
HOMEPAGE =	https://vagrantup.com
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/libarchive \
		converters/ruby-multi_json \
		devel/ruby-bundler \
		devel/ruby-childprocess \
		devel/ruby-diff-lcs \
		devel/ruby-erubis \
		devel/ruby-ffi \
		devel/ruby-hashicorp-checkpoint \
		devel/ruby-i18n \
		devel/ruby-log4r \
		devel/ruby-safe_yaml \
		devel/ruby-thor \
		devel/ruby-timers \
		devel/ruby-uuidtools \
		devel/ruby-wdm \
		mail/ruby-mime-types \
		net/ruby-net-scp \
		net/ruby-net-sftp \
		net/ruby-net-ssh \
		security/ruby-akami \
		sysutils/ruby-winrm \
		textproc/ruby-builder \
		textproc/ruby-gyoku \
		textproc/ruby-nokogiri \
		textproc/ruby-nori \
		www/ruby-addressable \
		www/ruby-http-cookie \
		www/ruby-httpclient \
		www/ruby-httpi \
		www/ruby-ntlm \
		www/ruby-rack \
		www/ruby-savon \
		www/ruby-wasabi
		

#CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
