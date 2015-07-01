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
		devel/ruby-diff-lcs \
		devel/ruby-ffi \
		devel/ruby-i18n \
		devel/ruby-log4r \
		devel/ruby-rspec/3/core \
		devel/ruby-rspec/3/expectations \
		devel/ruby-rspec/3/mocks \
		devel/ruby-rspec/3/rspec \
		devel/ruby-safe_yaml \
		devel/ruby-thor \
		devel/ruby-uuidtools \
		mail/ruby-mime-types \
		net/ruby-net-scp \
		net/ruby-net-sftp \
		net/ruby-net-ssh \
		security/ruby-akami \
		textproc/ruby-builder \
		textproc/ruby-gyoku \
		textproc/ruby-nokogiri \
		textproc/ruby-nori \
		www/ruby-addressable \
		www/ruby-httpclient \
		www/ruby-httpi \
		www/ruby-ntlm \
		www/ruby-rack \
		www/ruby-savon \
		www/ruby-wasabi
		

#CONFIGURE_STYLE =	ruby gem


.include <bsd.port.mk>
