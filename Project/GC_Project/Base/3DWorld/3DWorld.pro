#-------------------------------------------------
#
# Project created by QtCreator 2018-04-21T16:47:09
#
#-------------------------------------------------

LIBS    += -lopengl32 glu32.lib
QT      += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = 3DWorld
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += main.cpp\
        displaywindow.cpp \
    Camera.cpp \
    CameraKeyHandler.cpp \
    HeadLamp.cpp \
    Point3D.cpp \
    Vector3D.cpp \
    openglview.cpp \
    Model/modelloader.cpp \
    Model/modelrender.cpp

HEADERS  += displaywindow.h \
    Camera.h \
    CameraKeyHandler.h \
    HeadLamp.h \
    Point3D.h \
    Vector3D.h \
    openglview.h \
    Model/modeldata.h \
    Model/modelloader.h \
    Model/modelrender.h

FORMS    += displaywindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/'../../../../../../../../../../Program Files/Assimp/lib/x64/' -lassimp
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/'../../../../../../../../../../Program Files/Assimp/lib/x64/' -lassimpd
else:unix: LIBS += -L$$PWD/'../../../../../../../../../../Program Files/Assimp/lib/x64/' -lassimp

INCLUDEPATH += $$PWD/'../../../../../../../../../../Program Files/Assimp/include'
DEPENDPATH += $$PWD/'../../../../../../../../../../Program Files/Assimp/include'
