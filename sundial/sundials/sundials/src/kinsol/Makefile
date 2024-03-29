# -----------------------------------------------------------------
# $Revision: 1.4 $
# $Date: 2006/08/11 23:03:19 $
# -----------------------------------------------------------------
# Programmer(s): Radu Serban and Aaron Collier @ LLNL
# -----------------------------------------------------------------
# Copyright (c) 2002, The Regents of the University of California.
# Produced at the Lawrence Livermore National Laboratory.
# All rights reserved.
# For details, see the LICENSE file.
# -----------------------------------------------------------------
# Makefile for KINSOL module
#
# src/kinsol/Makefile.  Generated from Makefile.in by configure.
# -----------------------------------------------------------------

SHELL = /bin/sh



srcdir       = .
builddir     = .
abs_builddir = /Users/stonerri/github/science/CelegansNeuromechanicalGaitModulation/WormSim/sundials-2.3.0/src/kinsol
top_builddir = ../..
prefix       = /Users/stonerri/github/science/CelegansNeuromechanicalGaitModulation/WormSim/Sundials
exec_prefix  = ${prefix}
includedir   = ${prefix}/include
libdir       = ${exec_prefix}/lib

INSTALL        = /usr/local/bin/ginstall -c
INSTALL_LIB    = ${INSTALL}
INSTALL_HEADER = ${INSTALL} -m 644

LIBTOOL      = $(SHELL) $(top_builddir)/libtool
LIBTOOL_DEPS = config/ltmain.sh

CPP      = g++ -E
CPPFLAGS = 
CC       = g++
CFLAGS   = 
LDFLAGS  = 
LIBS     = -lm 

top_srcdir = $(srcdir)/../..

INCLUDES = -I$(top_builddir)/src -I$(top_srcdir)/include

LIB_REVISION = 0:1:0

KINSOL_LIB       = libsundials_kinsol.la
KINSOL_LIB_FILES = kinsol.lo kinsol_io.lo kinsol_dense.lo kinsol_band.lo kinsol_spils.lo kinsol_spgmr.lo kinsol_spbcgs.lo kinsol_sptfqmr.lo kinsol_bbdpre.lo
KINSOL_OBJ_FILES = kinsol.o kinsol_io.o kinsol_dense.o kinsol_band.o kinsol_spils.o kinsol_spgmr.o kinsol_spbcgs.o kinsol_sptfqmr.o kinsol_bbdpre.o

SHARED_LIB_FILES = $(top_builddir)/src/sundials/sundials_band.lo \
                   $(top_builddir)/src/sundials/sundials_dense.lo \
                   $(top_builddir)/src/sundials/sundials_iterative.lo \
                   $(top_builddir)/src/sundials/sundials_math.lo \
                   $(top_builddir)/src/sundials/sundials_nvector.lo \
                   $(top_builddir)/src/sundials/sundials_smalldense.lo \
                   $(top_builddir)/src/sundials/sundials_spgmr.lo \
                   $(top_builddir)/src/sundials/sundials_spbcgs.lo \
                   $(top_builddir)/src/sundials/sundials_sptfqmr.lo

mkinstalldirs = $(SHELL) $(top_srcdir)/config/mkinstalldirs

all: $(KINSOL_LIB)

$(KINSOL_LIB): shared $(KINSOL_LIB_FILES)
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) -o $(KINSOL_LIB) $(KINSOL_LIB_FILES) $(SHARED_LIB_FILES) -rpath $(libdir) $(LDFLAGS) $(LIBS) -version-info $(LIB_REVISION)

install: $(KINSOL_LIB)
	$(mkinstalldirs) $(includedir)/kinsol
	$(mkinstalldirs) $(libdir)
	$(LIBTOOL) --mode=install $(INSTALL_LIB) $(KINSOL_LIB) $(libdir)
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol.h         $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_dense.h   $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_band.h    $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_spgmr.h   $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_spbcgs.h  $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_sptfqmr.h $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_bbdpre.h  $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/include/kinsol/kinsol_spils.h   $(includedir)/kinsol/
	$(INSTALL_HEADER) $(top_srcdir)/src/kinsol/kinsol_impl.h        $(includedir)/kinsol/

uninstall:
	$(LIBTOOL) --mode=uninstall rm -f $(libdir)/$(KINSOL_LIB)
	rm -f $(includedir)/kinsol/kinsol.h
	rm -f $(includedir)/kinsol/kinsol_dense.h
	rm -f $(includedir)/kinsol/kinsol_band.h
	rm -f $(includedir)/kinsol/kinsol_spgmr.h
	rm -f $(includedir)/kinsol/kinsol_spbcgs.h
	rm -f $(includedir)/kinsol/kinsol_sptfqmr.h
	rm -f $(includedir)/kinsol/kinsol_bbdpre.h
	rm -f $(includedir)/kinsol/kinsol_spils.h
	rm -f $(includedir)/kinsol/kinsol_impl.h
	@if test -d ${includedir}/kinsol ; then \
	   rmdir ${includedir}/kinsol ;         \
	 fi

shared:
	@cd ${top_builddir}/src/sundials ; \
	 ${MAKE} ;                         \
	 cd ${abs_builddir}

clean:
	$(LIBTOOL) --mode=clean rm -f $(KINSOL_LIB)
	rm -f $(KINSOL_LIB_FILES)
	rm -f $(KINSOL_OBJ_FILES)

distclean: clean
	rm -f Makefile

kinsol.lo: $(srcdir)/kinsol.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol.c
kinsol_io.lo: $(srcdir)/kinsol_io.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_io.c
kinsol_dense.lo: $(srcdir)/kinsol_dense.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_dense.c
kinsol_band.lo: $(srcdir)/kinsol_band.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_band.c
kinsol_spils.lo: $(srcdir)/kinsol_spils.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_spils.c
kinsol_spgmr.lo: $(srcdir)/kinsol_spgmr.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_spgmr.c
kinsol_spbcgs.lo: $(srcdir)/kinsol_spbcgs.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_spbcgs.c
kinsol_sptfqmr.lo: $(srcdir)/kinsol_sptfqmr.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_sptfqmr.c
kinsol_bbdpre.lo: $(srcdir)/kinsol_bbdpre.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/kinsol_bbdpre.c

libtool: $(top_builddir)/$(LIBTOOL_DEPS)
	@cd ${top_builddir} ;                 \
	 ${SHELL} ./config.status --recheck ; \
	 cd ${abs_builddir}
