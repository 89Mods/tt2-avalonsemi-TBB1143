.PHONY = build

OPENLANE_IMAGE_NAME = "efabless/openlane:2022.07.02_01.38.08"
OPENLANE_ROOT = $(PWD)/openlane
PDK_ROOT = $(PWD)/pdk
PDK = "sky130B"

build:
	python3 configure.py --create-user-config
	docker run --rm -v $OPENLANE_ROOT:/openlane -v $(PDK_ROOT):$(PDK_ROOT) -v $(PWD):/work -e PDK_ROOT=$(PDK_ROOT) -u $(id -u $(USER)):$(id -g $(USER)) $(OPENLANE_IMAGE_NAME) /bin/bash -c "./flow.tcl -verbose 2 -overwrite -design /work/src -run_path /work/runs -tag wokwi"
	cp runs/wokwi/results/final/verilog/gl/tholin_avalonsemi_tbb1143.v src

pdk:
	if not [ -d "caravel_user_project" ]; then git clone "https://github.com/efabless/caravel_user_project.git" -b "mpw-7a"; fi
	cd caravel_user_project && make setup

tests:
	cd src && make clean && make

gltests:
	cd src && make clean && GATES=yes make

clean:
	rm -rf runs
	rm -f src/tholin_avalonsemi_tbb1143.v

distclean:
	rm -rf runs pdk openlane caravel_user_project
