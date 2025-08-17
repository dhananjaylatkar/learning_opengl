TOPDIR:=${PWD}

BUILD_DIR:=${TOPDIR}/.build_dir
APP_DIR=${TOPDIR}

all: build run

build: prepare app

run: build
	${BUILD_DIR}/app

app:
	@echo ">>> app >>>"
	cmake -S ${APP_DIR} -B ${BUILD_DIR}
	@make -C ${BUILD_DIR}
	@echo "<<< app <<<"

prepare:
	@mkdir -p ${BUILD_DIR}

clean:
	rm -rf ${BUILD_DIR} .cache

.PHONEY: prepare app build run clean
