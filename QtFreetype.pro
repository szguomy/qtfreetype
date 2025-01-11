QT -= gui

TEMPLATE = lib
DEFINES += QTFREETYPE_LIBRARY

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    qtfreetype.cpp

HEADERS += \
    QtFreetype_global.h \
    qtfreetype.h

DEFINES += FT2_BUILD_LIBRARY
DEFINES += WIN32
DEFINES += _LIB
DEFINES += _CRT_SECURE_NO_WARNINGS
DEFINES += FT_DEBUG_LEVEL_ERROR
DEFINES += FT_DEBUG_LEVEL_TRACE

INCLUDEPATH += \
    freetype-2.13.3/include/

SOURCES += \
    freetype-2.13.3/builds/windows/ftdebug.c \
    freetype-2.13.3/builds/windows/ftsystem.c \
    freetype-2.13.3/src/autofit/autofit.c \
    freetype-2.13.3/src/base/ftbase.c \
    freetype-2.13.3/src/base/ftbbox.c \
    freetype-2.13.3/src/base/ftbdf.c \
    freetype-2.13.3/src/base/ftbitmap.c \
    freetype-2.13.3/src/base/ftcid.c \
    freetype-2.13.3/src/base/ftfstype.c \
    freetype-2.13.3/src/base/ftgasp.c \
    freetype-2.13.3/src/base/ftglyph.c \
    freetype-2.13.3/src/base/ftgxval.c \
    freetype-2.13.3/src/base/ftinit.c \
    freetype-2.13.3/src/base/ftmm.c \
    freetype-2.13.3/src/base/ftotval.c \
    freetype-2.13.3/src/base/ftpatent.c \
    freetype-2.13.3/src/base/ftpfr.c \
    freetype-2.13.3/src/base/ftstroke.c \
    freetype-2.13.3/src/base/ftsynth.c \
    freetype-2.13.3/src/base/fttype1.c \
    freetype-2.13.3/src/base/ftwinfnt.c \
    freetype-2.13.3/src/bdf/bdf.c \
    freetype-2.13.3/src/cache/ftcache.c \
    freetype-2.13.3/src/cff/cff.c \
    freetype-2.13.3/src/cid/type1cid.c \
    freetype-2.13.3/src/dlg/dlgwrap.c \
    freetype-2.13.3/src/gzip/ftgzip.c \
    freetype-2.13.3/src/lzw/ftlzw.c \
    freetype-2.13.3/src/pcf/pcf.c \
    freetype-2.13.3/src/pfr/pfr.c \
    freetype-2.13.3/src/psaux/psaux.c \
    freetype-2.13.3/src/pshinter/pshinter.c \
    freetype-2.13.3/src/psnames/psmodule.c \
    freetype-2.13.3/src/raster/raster.c \
    freetype-2.13.3/src/sfnt\sfnt.c \
    freetype-2.13.3/src/smooth\smooth.c \
    freetype-2.13.3/src/sdf\sdf.c \
    freetype-2.13.3/src/svg\svg.c \
    freetype-2.13.3/src/truetype/truetype.c \
    freetype-2.13.3/src/type1/type1.c \
    freetype-2.13.3/src/type42/type42.c \
    freetype-2.13.3/src/winfonts/winfnt.c \


# Default rules for deployment.
unix {
    target.path = /usr/lib
}
!isEmpty(target.path): INSTALLS += target
