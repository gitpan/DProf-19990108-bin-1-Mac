# This Makefile is for the Devel::DProf extension to perl.
#
# It was generated automatically by MakeMaker version
#  (Revision: ) from the contents of
# Makefile.PL. Don't edit this file, edit Makefile.PL instead.
#
#	ANY CHANGES MADE HERE WILL BE LOST!
#
#   MakeMaker Parameters:

#	DEFINE => q[]
#	DISTNAME => q[DProf]
#	EXE_FILES => [q[dprofpp]]
#	NAME => q[Devel::DProf]
#	PL_FILES => { dprofpp.PL=>q[dprofpp] }
#	VERSION_FROM => q[DProf.pm]
#	XSPROTOARG => q[-noprototypes]
#	clean => { FILES=>q[tmon.out t/tmon.out t/err dprofpp T/tmon.out] }
#	dist => { COMPRESS=>q[gzip], SUFFIX=>q[gz] }

# --- MakeMaker constants section:
NAME = Devel::DProf
DISTNAME = DProf
NAME_SYM = Devel_DProf
VERSION = 19990108
VERSION_SYM = 19990108
XS_VERSION = 19990108
INST_LIB = ::::lib
INST_ARCHLIB = ::::lib
PERL_LIB = ::::lib
PERL_SRC = ::::
PERL = ::::miniperl
FULLPERL = ::::perl
XSPROTOARG = -noprototypes
SOURCE =  DProf.c

MODULES = DProf.pm


.INCLUDE : $(PERL_SRC)BuildRules.mk


# FULLEXT = Pathname for extension directory (eg DBD:Oracle).
# BASEEXT = Basename part of FULLEXT. May be just equal FULLEXT.
# ROOTEXT = Directory part of FULLEXT (eg DBD)
# DLBASE  = Basename part of dynamic library. May be just equal BASEEXT.
FULLEXT = Devel:DProf
BASEEXT = DProf
ROOTEXT = Devel:
DEFINE = 

# Handy lists of source code files:
XS_FILES= DProf.xs
C_FILES = DProf.c
H_FILES = 


.INCLUDE : $(PERL_SRC)ext:ExtBuildRules.mk


# --- MakeMaker dlsyms section:

dynamic :: DProf.exp


DProf.exp: Makefile.PL
	$(PERL) "-I$(PERL_LIB)" -e 'use ExtUtils::Mksymlists; Mksymlists("NAME" => "Devel::DProf", "DL_FUNCS" => {  }, "DL_VARS" => []);'


# --- MakeMaker dynamic section:

all :: dynamic

install :: do_install_dynamic

install_dynamic :: do_install_dynamic


# --- MakeMaker static section:

all :: static

install :: do_install_static

install_static :: do_install_static


# --- MakeMaker clean section:
# FILES, tmon.out t/tmon.out t/err dprofpp T/tmon.out

# Delete temporary files but do not touch installed files. We don't delete
# the Makefile here so a later make realclean still has a makefile to use.

clean ::
	$(RM_RF) DProf.c :t:tmon.out :t:err :T:tmon.out
	$(MV) Makefile.mk Makefile.mk.old


# --- MakeMaker realclean section:

# Delete temporary files (via clean) and also delete installed files
realclean purge ::  clean
	$(RM_RF) Makefile.mk Makefile.mk.old


# --- MakeMaker postamble section:


# --- MakeMaker rulez section:

install install_static install_dynamic :: 
	$(PERL_SRC)PerlInstall -l $(PERL_LIB)

.INCLUDE : $(PERL_SRC)BulkBuildRules.mk


# End.
