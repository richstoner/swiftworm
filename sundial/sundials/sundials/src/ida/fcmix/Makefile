# -----------------------------------------------------------------
# $Revision: 1.3 $
# $Date: 2006/07/25 18:31:40 $
# -----------------------------------------------------------------
# Programmer(s): Aaron Collier @ LLNL
# -----------------------------------------------------------------
# Copyright (c) 2005, The Regents of the University of California.
# Produced at the Lawrence Livermore National Laboratory.
# All rights reserved.
# For details, see the LICENSE file.
# -----------------------------------------------------------------
# Makefile for FIDA module
#
# src/ida/fcmix/Makefile.  Generated from Makefile.in by configure.
# -----------------------------------------------------------------

SHELL = /bin/sh

srcdir       = .
builddir     = .
abs_builddir = /Users/stonerri/github/science/CelegansNeuromechanicalGaitModulation/WormSim/sundials-2.3.0/src/ida/fcmix
top_builddir = ../../..
prefix       = /usr/local
exec_prefix  = ${prefix}
includedir   = ${prefix}/include
libdir       = ${exec_prefix}/lib

INSTALL        = /usr/local/bin/ginstall -c
INSTALL_LIB    = ${INSTALL}
INSTALL_HEADER = ${INSTALL} -m 644

LIBTOOL      = $(SHELL) $(top_builddir)/libtool
LIBTOOL_DEPS = config/ltmain.sh

CPP      = cc -E
CPPFLAGS = 
CC       = cc
CFLAGS   = 
LDFLAGS  = 
LIBS     = -lm 

top_srcdir = $(srcdir)/../../..

INCLUDES = -I$(top_builddir)/src -I$(top_srcdir)/include -I$(top_srcdir)/src/ida

LIB_REVISION = 1:0:0

FIDA_LIB       = libsundials_fida.la
FIDA_LIB_FILES = fida.lo fidaband.lo fidabbd.lo fidadense.lo fidajtimes.lo fidapreco.lo fidaewt.lo fidaroot.lo
FIDA_OBJ_FILES = fida.o fidaband.o fidabbd.o fidadense.o fidajtimes.o fidapreco.o fidaewt.o fidaroot.o

mkinstalldirs = $(SHELL) $(top_srcdir)/config/mkinstalldirs

all: $(FIDA_LIB)

$(FIDA_LIB): $(FIDA_LIB_FILES)
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) -o $(FIDA_LIB) $(FIDA_LIB_FILES) -rpath $(libdir) $(LDFLAGS) $(LIBS) -static -version-info $(LIB_REVISION)

install: $(FIDA_LIB)
	$(mkinstalldirs) $(libdir)
	$(LIBTOOL) --mode=install $(INSTALL_LIB) $(FIDA_LIB) $(libdir)

uninstall:
	$(LIBTOOL) --mode=uninstall rm -f $(libdir)/$(FIDA_LIB)

clean:
	$(LIBTOOL) --mode=clean rm -f $(FIDA_LIB)
	rm -f $(FIDA_LIB_FILES)
	rm -f $(FIDA_OBJ_FILES)

distclean: clean
	rm -f Makefile

fida.lo: $(srcdir)/fida.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fida.c
fidaewt.lo: $(srcdir)/fidaewt.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidaewt.c
fidaband.lo: $(srcdir)/fidaband.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidaband.c
fidadense.lo: $(srcdir)/fidadense.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidadense.c
fidajtimes.lo: $(srcdir)/fidajtimes.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidajtimes.c
fidapreco.lo: $(srcdir)/fidapreco.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidapreco.c
fidabbd.lo: $(srcdir)/fidabbd.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidabbd.c
fidaroot.lo: $(srcdir)/fidaroot.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/fidaroot.c

libtool: $(top_builddir)/$(LIBTOOL_DEPS)
	@cd ${top_builddir} ;                 \
	 ${SHELL} ./config.status --recheck ; \
	 cd ${abs_builddir}
