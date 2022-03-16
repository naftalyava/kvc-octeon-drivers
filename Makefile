ifndef DESTDIR
DESTDIR=/usr/
endif
ifndef CONFDIR
CONFDIR=/etc
endif

install:
	install -v -m 644 octeon-drivers-lib.sh $(DESTDIR)/lib/kvc/
	install -v -m 644 octeon-drivers.conf $(CONFDIR)/kvc/
	install -v -m 755 octeon-drivers-wrapper.sh $(DESTDIR)/lib/kvc/
	ln -sf ../lib/kvc/octeon-drivers.sh $(DESTDIR)/bin/spkut
