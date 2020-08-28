PLUGINVERSION=2.4
XPLANEPLUGINS=/media/Simulators/X-Plane_1150/Resources/plugins/
INCLUDE=-I$(CURDIR)/SDK/CHeaders/XPLM
CFLAGS=-m64 -Wno-missing-braces -Wall -static-libgcc -shared -fPIC -fvisibility=hidden -O2 -DLIN -DXPLM200 -DXPLM210 -DXPLM300 -DVERSION=$(PLUGINVERSION)

#   

all:
	mkdir -p $(CURDIR)/build
	gcc $(INCLUDE) $(CFLAGS) source/plugin.c -o build/opentrack.xpl
	
install:
	cp $(CURDIR)/build/opentrack.xpl $(XPLANEPLUGINS)/opentrack.xpl

clean:
	rm -f $(CURDIR)/build/opentrack.xpl
