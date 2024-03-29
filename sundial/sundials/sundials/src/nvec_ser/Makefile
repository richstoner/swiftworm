# -----------------------------------------------------------------
# $Revision: 1.4 $
# $Date: 2006/08/11 23:03:25 $
# -----------------------------------------------------------------
# Programmer(s): Radu Serban and Aaron Collier @ LLNL
# -----------------------------------------------------------------
# Copyright (c) 2002, The Regents of the University of California.
# Produced at the Lawrence Livermore National Laboratory.
# All rights reserved.
# For details, see the LICENSE file.
# -----------------------------------------------------------------
# Makefile for serial NVECTOR module
#
# src/nvec_ser/Makefile.  Generated from Makefile.in by configure.
# -----------------------------------------------------------------

SHELL = /bin/sh



srcdir       = .
builddir     = .
abs_builddir = /Users/stonerri/github/science/CelegansNeuromechanicalGaitModulation/WormSim/sundials-2.3.0/src/nvec_ser
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

FCMIX_ENABLED = no

top_srcdir = $(srcdir)/../..

INCLUDES = -I$(top_builddir)/src -I$(top_srcdir)/include

LIB_REVISION = 0:1:0

NVECSER_LIB       = libsundials_nvecserial.la
NVECSER_LIB_FILES = nvector_serial.lo

FNVECSER_LIB       = libsundials_fnvecserial.la
FNVECSER_LIB_FILES = fnvector_serial.lo

SHARED_LIB_FILES = $(top_builddir)/src/sundials/sundials_math.lo

mkinstalldirs = $(SHELL) $(top_srcdir)/config/mkinstalldirs

all: $(NVECSER_LIB) $(FNVECSER_LIB)

$(NVECSER_LIB): shared $(NVECSER_LIB_FILES)
	$(LIBTOOL) --mode=link $(CC) $(CFLAGS) -o $(NVECSER_LIB) $(NVECSER_LIB_FILES) $(SHARED_LIB_FILES) -rpath $(libdir) $(LDFLAGS) $(LIBS) -version-info $(LIB_REVISION)

$(FNVECSER_LIB): $(FNVECSER_LIB_FILES)
	@if test "X${FCMIX_ENABLED}" = "Xyes"; then                                                                                                                                               \
	   echo "${LIBTOOL} --mode=link ${CC} ${CFLAGS} -o ${FNVECSER_LIB} ${FNVECSER_LIB_FILES} ${SHARED_LIB_FILES} -rpath ${libdir} $(LDFLAGS) ${LIBS} -static -version-info ${LIB_REVISION}" ; \
	   ${LIBTOOL} --mode=link ${CC} ${CFLAGS} -o ${FNVECSER_LIB} ${FNVECSER_LIB_FILES} ${SHARED_LIB_FILES} -rpath ${libdir} $(LDFLAGS) ${LIBS} -static -version-info ${LIB_REVISION} ;        \
	fi

install: $(NVECSER_LIB) $(FNVECSER_LIB)
	$(mkinstalldirs) $(includedir)/nvector
	$(mkinstalldirs) $(libdir)
	$(LIBTOOL) --mode=install $(INSTALL_LIB) $(NVECSER_LIB) $(libdir)
	$(INSTALL_HEADER) $(top_srcdir)/include/nvector/nvector_serial.h $(includedir)/nvector/
	@if test "X${FCMIX_ENABLED}" = "Xyes"; then                                    \
	   echo "${LIBTOOL} --mode=install ${INSTALL_LIB} ${FNVECSER_LIB} ${libdir}" ; \
	   ${LIBTOOL} --mode=install ${INSTALL_LIB} ${FNVECSER_LIB} ${libdir} ;        \
	 fi

uninstall:
	$(LIBTOOL) --mode=uninstall rm -f $(libdir)/$(NVECSER_LIB)
	rm -f $(includedir)/nvector/nvector_serial.h
	@if test -d ${includedir}/nvector ; then \
	   rm -rf ${includedir}/nvector ;        \
	 fi
	@if test "X${FCMIX_ENABLED}" = "Xyes"; then                             \
	   echo "${LIBTOOL} --mode=uninstall rm -f ${libdir}/${FNVECSER_LIB}" ; \
	   ${LIBTOOL} --mode=uninstall rm -f ${libdir}/${FNVECSER_LIB} ;        \
	 fi

shared:
	@cd ${top_builddir}/src/sundials ; \
	 ${MAKE} ;                         \
	 cd ${abs_builddir}

clean:
	$(LIBTOOL) --mode=clean rm -f $(NVECSER_LIB)
	rm -f $(NVECSER_LIB_FILES)
	rm -f nvector_serial.o
	@if test "X${FCMIX_ENABLED}" = "Xyes"; then               \
	   echo "${LIBTOOL} --mode=clean rm -f ${FNVECSER_LIB}" ; \
	   ${LIBTOOL} --mode=clean rm -f ${FNVECSER_LIB} ;        \
	   echo "rm -f ${FNVECSER_LIB_FILES}" ;                   \
	   rm -f ${FNVECSER_LIB_FILES} ;                          \
	   echo "rm -f fnvector_serial.o" ;                       \
	   rm -f fnvector_serial.o ;                              \
	 fi

distclean: clean
	rm -f Makefile

nvector_serial.lo: $(srcdir)/nvector_serial.c
	$(LIBTOOL) --mode=compile $(CC) $(CPPFLAGS) $(INCLUDES) $(CFLAGS) -c $(srcdir)/nvector_serial.c
fnvector_serial.lo: $(srcdir)/fnvector_serial.c
	@if test "X${FCMIX_ENABLED}" = "Xyes"; then                                                                  \
	   echo "${LIBTOOL} --mode=compile ${CC} ${CPPFLAGS} $(INCLUDES) ${CFLAGS} -c ${srcdir}/fnvector_serial.c" ; \
	   ${LIBTOOL} --mode=compile ${CC} ${CPPFLAGS} $(INCLUDES) ${CFLAGS} -c ${srcdir}/fnvector_serial.c ;        \
	 fi

libtool: $(top_builddir)/$(LIBTOOL_DEPS)
	@cd ${top_builddir} ;                 \
	 ${SHELL} ./config.status --recheck ; \
	 cd ${abs_builddir}
