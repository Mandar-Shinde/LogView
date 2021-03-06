#############################################################################
# Makefile for building: Viewer
# Generated by qmake (2.01a) (Qt 4.6.4) on: Tue Jul 29 17:48:07 2014
# Project:  Viewer.pro
# Template: app
# Command: /usr/local/Trolltech/Qt-4.6.4/bin/qmake -unix -o Makefile Viewer.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQT_NO_DEBUG -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/local/Trolltech/Qt-4.6.4/mkspecs/linux-g++ -I. -I/usr/local/Trolltech/Qt-4.6.4/include/QtCore -I/usr/local/Trolltech/Qt-4.6.4/include/QtGui -I/usr/local/Trolltech/Qt-4.6.4/include -I. -I.
LINK          = g++
LFLAGS        = -Wl,-O1 -Wl,-rpath,/usr/local/Trolltech/Qt-4.6.4/lib
LIBS          = $(SUBLIBS)  -L/usr/local/Trolltech/Qt-4.6.4/lib -lQtGui -L/usr/local/Trolltech/Qt-4.6.4/lib -L/usr/X11R6/lib -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/local/Trolltech/Qt-4.6.4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = main.cpp \
		Viewer.cpp moc_Viewer.cpp
OBJECTS       = main.o \
		Viewer.o \
		moc_Viewer.o
DIST          = /usr/local/Trolltech/Qt-4.6.4/mkspecs/common/g++.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/linux.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/release.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/include_source_dir.prf \
		Viewer.pro
QMAKE_TARGET  = Viewer
DESTDIR       = 
TARGET        = Viewer

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET): ui_Viewer.h $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: Viewer.pro  /usr/local/Trolltech/Qt-4.6.4/mkspecs/linux-g++/qmake.conf /usr/local/Trolltech/Qt-4.6.4/mkspecs/common/g++.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/unix.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/linux.conf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/qconfig.pri \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_functions.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_config.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/exclusive_builds.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_pre.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/release.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_post.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/warn_on.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/unix/thread.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/moc.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/resources.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/uic.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/yacc.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/lex.prf \
		/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/include_source_dir.prf \
		/usr/local/Trolltech/Qt-4.6.4/lib/libQtGui.prl \
		/usr/local/Trolltech/Qt-4.6.4/lib/libQtCore.prl
	$(QMAKE) -unix -o Makefile Viewer.pro
/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/g++.conf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/unix.conf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/common/linux.conf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/qconfig.pri:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_functions.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt_config.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/exclusive_builds.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_pre.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/release.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/default_post.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/warn_on.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/qt.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/unix/thread.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/moc.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/resources.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/uic.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/yacc.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/lex.prf:
/usr/local/Trolltech/Qt-4.6.4/mkspecs/features/include_source_dir.prf:
/usr/local/Trolltech/Qt-4.6.4/lib/libQtGui.prl:
/usr/local/Trolltech/Qt-4.6.4/lib/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -unix -o Makefile Viewer.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/Viewer1.0.0 || $(MKDIR) .tmp/Viewer1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/Viewer1.0.0/ && $(COPY_FILE) --parents Viewer.h .tmp/Viewer1.0.0/ && $(COPY_FILE) --parents main.cpp Viewer.cpp .tmp/Viewer1.0.0/ && $(COPY_FILE) --parents Viewer.ui .tmp/Viewer1.0.0/ && (cd `dirname .tmp/Viewer1.0.0` && $(TAR) Viewer1.0.0.tar Viewer1.0.0 && $(COMPRESS) Viewer1.0.0.tar) && $(MOVE) `dirname .tmp/Viewer1.0.0`/Viewer1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/Viewer1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_Viewer.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_Viewer.cpp
moc_Viewer.cpp: ui_Viewer.h \
		Viewer.h
	/usr/local/Trolltech/Qt-4.6.4/bin/moc $(DEFINES) $(INCPATH) Viewer.h -o moc_Viewer.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all: ui_Viewer.h
compiler_uic_clean:
	-$(DEL_FILE) ui_Viewer.h
ui_Viewer.h: Viewer.ui
	/usr/local/Trolltech/Qt-4.6.4/bin/uic Viewer.ui -o ui_Viewer.h

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean compiler_uic_clean 

####### Compile

main.o: main.cpp Viewer.h \
		ui_Viewer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

Viewer.o: Viewer.cpp Viewer.h \
		ui_Viewer.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o Viewer.o Viewer.cpp

moc_Viewer.o: moc_Viewer.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_Viewer.o moc_Viewer.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

