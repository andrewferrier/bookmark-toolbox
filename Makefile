TEMPDIR := $(shell mktemp -t tmp.XXXXXX -d)
UNAME := $(shell uname)

builddeb: determineversion builddeb_real

determineversion:
	$(eval GITDESCRIBE := $(shell git describe --dirty))
	sed 's/Version: .*/Version: $(GITDESCRIBE)/' debian/DEBIAN/control_template > debian/DEBIAN/control

builddeb_real:
	sudo apt-get install build-essential
	cp -R debian/DEBIAN/ $(TEMPDIR)
	mkdir -p $(TEMPDIR)/usr/bin
	mkdir -p $(TEMPDIR)/usr/share/doc/bookmark-toolbox
	cp bookmark-toolbox $(TEMPDIR)/usr/bin
	cp README* $(TEMPDIR)/usr/share/doc/bookmark-toolbox
	cp LICENSE* $(TEMPDIR)/usr/share/doc/bookmark-toolbox
	fakeroot chmod -R u=rwX,go=rX $(TEMPDIR)
	fakeroot chmod -R u+x $(TEMPDIR)/usr/bin
	fakeroot dpkg-deb --build $(TEMPDIR) .
