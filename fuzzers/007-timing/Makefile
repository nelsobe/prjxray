# for now hammering on just picorv32
# consider instead aggregating multiple projects
PRJ?=picorv32
PRJN?=8

all: build/timgrid-v.json

clean:
	rm -rf build
	cd speed && $(MAKE) clean
	cd timgrid && $(MAKE) clean
	cd projects/$(PRJ) && $(MAKE) clean

speed/build/speed.json:
	cd speed && $(MAKE)

timgrid/build/timgrid.json:
	cd timgrid && $(MAKE)

build/timgrid-v.json: projects/$(PRJ)/build/timgrid-v.json
	mkdir -p build
	cp projects/$(PRJ)/build/timgrid-v.json build/timgrid-v.json

projects/$(PRJ)/build/timgrid-v.json: speed/build/speed.json timgrid/build/timgrid.json
	cd projects/$(PRJ) && $(MAKE) N=$(PRJN)

