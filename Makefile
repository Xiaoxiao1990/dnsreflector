PROG=dnsreflector
SRCS=dnsreflector.c log.c
MAN=dnsreflector.1

BINDIR=/usr/local/sbin
MANDIR=/usr/local/man/man

CFLAGS+=-g -Wall -Werror -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wshadow -Wpointer-arith -Wcast-qual -Wsign-compare

VERS=1.03
DISTDIR=$(PROG)-$(VERS)
dist:
	-rm -f $(DISTDIR).tar $(DISTDIR).tar.gz
	-tar -I MANIFEST -s '/^/$(DISTDIR)\//' -cvf $(DISTDIR).tar
	-gzip -9 $(DISTDIR).tar

.include <bsd.prog.mk>
