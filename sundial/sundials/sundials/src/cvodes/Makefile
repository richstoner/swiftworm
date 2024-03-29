# -----------------------------------------------------------------
# $Revision: 1.4 $
# $Date: 2006/08/11 23:03:09 $
# -----------------------------------------------------------------
# Programmer(s): Radu Serban and Aaron Collier @ LLNL
# -----------------------------------------------------------------
# Copyright (c) 2005, The Regents of the University of California.
# Produced at the Lawrence Livermore National Laboratory.
# All rights reserved.
# For details, see the LICENSE file.
# -----------------------------------------------------------------
# Makefile for CVODES module
#
# src/cvodes/Makefile.  Generated from Makefile.in by configure.
# -----------------------------------------------------------------

SHELL = /bin/sh



srcdir       = .
builddir     = .
abs_builddir = /Users/stonerri/github/science/CelegansNeuromechanicalGaitModulation/WormSim/sundials-2.3.0/src/cvodes
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

LIB_REVISION = 1:0:0

CVODES_LIB       = libsundials_cvodes.la
CVODES_LIB_FILES = cvodes.lo cvodes_io.lo cvodea.lo cvodea_io.lo cvodes_band.lo cvodes_dense.lo cvodes_diag.lo cvodes_spils.lo cvodes_spbcgs.lo cvodes_spgmr.lo cvodes_sptfqmr.lo cvodes_bandpre.lo cvodes_bbdpre.lo
CVODES_OBJ_FILES = cvodes.o cvodes_io.o cvodea.o cvodea_io.o cvodes_band.o cvodes_dense.o cvodes_diag.o cvodes_spils.o cvodes_spbcgs.o cvodes_spgmr.o cvodes_sptfqmr.o cvodes_bandpre.o cvodes_bbdpre.o

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

all: $(CVODES_LIB)

$(CVODES_LIB): shared $(CVODES_LIB_FILES)
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) -o $(CVODES_LIB) $(CVODES_LIB_FILES) $(SHARED_LIB_FILES) -rpath $(libdir) $(LDFLAGS) $(LIBS) -version-info $(LIB_REVISION)

install: $(CVODES_LIB)
	$(mkinstalldirs) $(includedir)/cvodes
	$(mkinstalldirs) $(libdir)
	$(LIBTOOL) --mode=install $(INSTALL_LIB) $(CVODES_LIB) $(libdir)
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes.h         $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_dense.h   $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_band.h    $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_diag.h    $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_spils.h   $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_spbcgs.h  $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_spgmr.h   $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_sptfqmr.h $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_bandpre.h $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/include/cvodes/cvodes_bbdpre.h  $(includedir)/cvodes/
	$(INSTALL_HEADER) $(top_srcdir)/src/cvodes/cvodes_impl.h        $(includedir)/cvodes/

uninstall:
	$(LIBTOOL) --mode=uninstall rm -f $(libdir)/$(CVODES_LIB)
	rm -f $(includedir)/cvodes/cvodes.h
	rm -f $(includedir)/cvodes/cvodes_dense.h
	rm -f $(includedir)/cvodes/cvodes_band.h
	rm -f $(includedir)/cvodes/cvodes_diag.h
	rm -f $(includedir)/cvodes/cvodes_spils.h
	rm -f $(includedir)/cvodes/cvodes_spbcgs.h
	rm -f $(includedir)/cvodes/cvodes_spgmr.h
	rm -f $(includedir)/cvodes/cvodes_sptfqmr.h
	rm -f $(includedir)/cvodes/cvodes_bandpre.h
	rm -f $(includedir)/cvodes/cvodes_bbdpre.h
	rm -f $(includedir)/cvodes/cvodes_impl.h
	@if test -d ${includedir}/cvodes ; then \
	   rmdir ${includedir}/cvodes ;         \
	 fi

shared:
	@cd ${top_builddir}/src/sundials ; \
	 ${MAKE} ;                         \
	 cd ${abs_builddir}

clean:
	$(LIBTOOL) --mode=clean rm -f $(CVODES_LIB)
	rm -f $(CVODES_LIB_FILES)
	rm -f $(CVODES_OBJ_FILES)

distclean: clean
	rm -f Makefile

cvodes.lo: $(srcdir)/cvodes.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes.c
cvodes_io.lo: $(srcdir)/cvodes_io.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_io.c
cvodea.lo: $(srcdir)/cvodea.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodea.c
cvodea_io.lo: $(srcdir)/cvodea_io.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodea_io.c
cvodes_dense.lo: $(srcdir)/cvodes_dense.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_dense.c
cvodes_band.lo: $(srcdir)/cvodes_band.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_band.c
cvodes_diag.lo: $(srcdir)/cvodes_diag.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_diag.c
cvodes_spils.lo: $(srcdir)/cvodes_spils.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_spils.c
cvodes_spbcgs.lo: $(srcdir)/cvodes_spils.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_spbcgs.c
cvodes_spgmr.lo: $(srcdir)/cvodes_spgmr.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_spgmr.c
cvodes_sptfqmr.lo: $(srcdir)/cvodes_sptfqmr.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_sptfqmr.c
cvodes_bandpre.lo: $(srcdir)/cvodes_bandpre.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_bandpre.c
cvodes_bbdpre.lo: $(srcdir)/cvodes_bbdpre.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/cvodes_bbdpre.c


libtool: $(top_builddir)/$(LIBTOOL_DEPS)
	@cd ${top_builddir} ;                 \
	 ${SHELL} ./config.status --recheck ; \
	 cd ${abs_builddir}
