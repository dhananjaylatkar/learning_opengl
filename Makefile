TOPDIR:=${PWD}

CONTRIB:=${TOPDIR}/contrib
BUILD_DIR:=${TOPDIR}/.build_dir
STAGING_DIR:=${TOPDIR}/.staging_dir
INCLUDE_DIR:=${STAGING_DIR}/include
LIB_DIR:=${STAGING_DIR}/libs

GLFW=glfw-3.4
GLFW_SRC=${CONTRIB}/${GLFW}
BUILD_DIR_GLFW=${BUILD_DIR}/${GLFW}

APP=src
APP_SRC=${TOPDIR}/${APP}
BUILD_DIR_APP=${BUILD_DIR}/${APP}

all: build run

build: prepare glfw app

run: build
	${BUILD_DIR_APP}/app

app:
	@echo ">>> app >>>"
	INCLUDE=${INCLUDE_DIR} LIBS=${LIB_DIR} cmake -S ${APP_SRC} -B ${BUILD_DIR_APP}
	@make -C ${BUILD_DIR_APP}
	@echo "<<< app <<<"

glfw:
	@echo ">>> ${GLFW} >>>"
	cmake -S ${GLFW_SRC} -B ${BUILD_DIR_GLFW} -D GLFW_BUILD_X11=0 -D BUILD_SHARED_LIBS=ON
	@make -C ${BUILD_DIR_GLFW}
	@echo "installing ${GLFW}"
	@cp ${BUILD_DIR_GLFW}/src/libglfw.so ${LIB_DIR}/
	@cp ${BUILD_DIR_GLFW}/src/libglfw.so.3 ${LIB_DIR}/
	@cp ${BUILD_DIR_GLFW}/src/libglfw.so.3.4 ${LIB_DIR}/
	@cp -r ${GLFW_SRC}/include/GLFW ${INCLUDE_DIR}/

	@echo "<<< ${GLFW} <<<"

prepare:
	@mkdir -p ${BUILD_DIR}
	@mkdir -p ${STAGING_DIR}
	@mkdir -p ${INCLUDE_DIR}
	@mkdir -p ${LIB_DIR}

clean:
	rm -rf ${BUILD_DIR}
	rm -rf ${STAGING_DIR}

.PHONEY: prepare glfw app build run clean
