TEMPLATE = app
CONFIG += console
CONFIG -= app_bundle
CONFIG -= qt
CONFIG += link_daa2isoig

TARGET = daa2iso
QMAKE_CFLAGS_WARN_ON += -Wno-sign-compare -Wno-unused-parameter -Wno-pointer-sign -Wno-unused-value

INCLUDEPATH += . $$PWD/lib

PKGCONFIG += liblzma
DEFINES += HAVE_LIBLZMA=1

PKGCONFIG += zlib
DEFINES += HAVE_ZLIB=1


SOURCES = src/LzmaDec.c src/daa2iso.c src/tinflate.c
HEADERS = src/daa_crypt.h src/LzmaDec.h src/tinf.h src/Types.h
