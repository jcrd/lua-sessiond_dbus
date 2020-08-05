URL = git@github.com:jcrd/lua-sessiond_dbus

rock:
	luarocks make --local rockspec/sessiond_dbus-devel-1.rockspec

gh-pages:
	git clone -b gh-pages --single-branch $(URL) gh-pages

ldoc: gh-pages
	ldoc . -d gh-pages

.PHONY: rock ldoc
