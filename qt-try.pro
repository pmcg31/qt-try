QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    fitsexception.cpp \
    fitsimage.cpp \
    fitsraster.cpp \
    fitstantrum.cpp \
    fitswidget.cpp \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    fitsexception.h \
    fitsimage.h \
    fitsraster.h \
    fitstantrum.h \
    fitswidget.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

unix|win32: LIBS += -lcfitsio
