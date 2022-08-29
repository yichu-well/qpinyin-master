QT          -= gui

TEMPLATE    = lib

SOURCES     += \
            dictbuilder.cpp \
            dictlist.cpp \
            dicttrie.cpp \
            lpicache.cpp \
            matrixsearch.cpp \
            mystdlib.cpp \
            ngram.cpp \
            pinyinime.cpp \
            searchutility.cpp \
            spellingtable.cpp \
            spellingtrie.cpp \
            splparser.cpp \
            sync.cpp \
            userdict.cpp \
            utf16char.cpp \
            utf16reader.cpp

HEADERS     += \
            atomdictbase.h \
            dictbuilder.h \
            dictdef.h \
            dictlist.h \
            dicttrie.h \
            lpicache.h \
            matrixsearch.h \
            mystdlib.h \
            ngram.h \
            pinyinime.h \
            searchutility.h \
            spellingtable.h \
            spellingtrie.h \
            splparser.h \
            sync.h \
            userdict.h \
            utf16char.h \
            utf16reader.h

CONFIG      += staticlib
TARGET      = googlepinyin

win32{
#    CONFIG      += debug_and_release build_all
    
    CONFIG(debug, debug|release){
        TARGET  = $$join(TARGET,,,d)
    }
    CONFIG(release, debug|release){
        TARGET  = $$TARGET
    }
}

DESTDIR     = $$PWD/../build/lib/googlepinyin

MOC_DIR     = $$PWD/../build/googlepinyin/moc
RCC_DIR     = $$PWD/../build/googlepinyin/res
UI_DIR      = $$PWD/../build/googlepinyin/ui
OBJECTS_DIR = $$PWD/../build/googlepinyin/obj
