://github.com/buzzdeee/ports_devel_hashicorp-checkpoint $OpenBSD$

COMMENT =	Virtual machine management environment

GH_ACCOUNT=             mitchellh
GH_PROJECT=             vagrant
GH_TAGNAME=             v1.8.6

CATEGORIES =    sysutils
HOMEPAGE =	https://vagrantup.com
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/libarchive \
		devel/ruby-bundler \
		devel/ruby-childprocess,${MODRUBY_FLAVOR}>=0.5.0,<0.6 \
		devel/ruby-ruby_dep \
		devel/ruby-erubis,${MODRUBY_FLAVOR}>=2.7.0,<2.8 \
		devel/ruby-hashicorp-checkpoint,${MODRUBY_FLAVOR}>=0.1.1,<0.2 \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.6.0,<=0.8 \
		devel/ruby-listen,${MODRUBY_FLAVOR}>=3.1.5,<3.2 \
		devel/ruby-log4r,${MODRUBY_FLAVOR}>=1.1.9,<1.1.11 \
		devel/ruby-rb-kqueue,${MODRUBY_FLAVOR}>=0.2.0,<0.3 \
		devel/ruby-wdm,${MODRUBY_FLAVOR}>=0.1.0,<0.2 \
		net/ruby-net-scp,${MODRUBY_FLAVOR}>=1.1.0,<1.3 \
		net/ruby-net-sftp,${MODRUBY_FLAVOR}>=2.1,<3.0 \
		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=3.0.1,<3.1 \
		sysutils/ruby-winrm,${MODRUBY_FLAVOR}>=1.6,<2.0 \
		sysutils/ruby-winrm-fs,${MODRUBY_FLAVOR}>=0.3,<1.0 \
		textproc/ruby-nokogiri \
		www/ruby-rest-client,${MODRUBY_FLAVOR}>=1.6.0,<3.0 \
		
#		www/ruby-httpclient \
#		www/ruby-savon \
#		www/ruby-rack \
#		www/ruby-httpi \
#		www/ruby-ntlm \
#		www/ruby-addressable \
#		www/ruby-wasabi
#		textproc/ruby-nori \
#		textproc/ruby-gyoku \
#		textproc/ruby-builder \
#		security/ruby-akami \
#		mail/ruby-mime-types \
#		devel/ruby-uuidtools \
#		devel/ruby-timers \
#		devel/ruby-thor \
#		devel/ruby-safe_yaml \
#		devel/ruby-little-plugger \
#		devel/ruby-diff-lcs \
#		converters/ruby-multi_json \
#		devel/ruby-celluloid \

#CONFIGURE_STYLE =	ruby gem
#CONFIGURE_STYLE =	ruby gem ext

GEM_BASE=       ${WRKDIR}/gem-tmp/.gem
_GEM_MAKE=      "make V=1"
GEM_FLAGS+=     --local --no-rdoc --no-ri --no-force --verbose --backtrace \
		--user-install
_GEM_PATCHED=   ${DISTNAME}${EXTRACT_SUFX}
GEM=		gem23


do-build:
	cd ${WRKSRC} && gem23 build vagrant.gemspec

do-install:
	mkdir -p ${DESTDIR}/lib/ruby/gems/2.3
	cd ${WRKSRC} && gem23 install ${DISTNAME}.gem --build-root=${DESTDIR}/lib/ruby/gems/2.3

.include <bsd.port.mk>
