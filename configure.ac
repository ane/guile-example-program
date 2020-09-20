dnl -*- Autoconf -*-

AC_INIT([gep], [m4_translit(m4_esyscmd([cat VERSION]),m4_newline)])
AC_CONFIG_AUX_DIR([build-aux])
AM_INIT_AUTOMAKE([gnu color-tests -Wall -Wno-portability foreign])
AM_SILENT_RULES([yes])

GUILE_PKG([3.0 2.2])
GUILE_PROGS
if test "x$GUILD" = "x"; then
   AC_MSG_ERROR(['guild' binary not found; please check your Guile installation.])
fi

dnl Guile prefix and libdir.
GUILE_PREFIX=`$PKG_CONFIG --print-errors --variable=prefix guile-$GUILE_EFFECTIVE_VERSION`
GUILE_LIBDIR=`$PKG_CONFIG --print-errors --variable=libdir guile-$GUILE_EFFECTIVE_VERSION`
AC_SUBST(GUILE_PREFIX)
AC_SUBST(GUILE_LIBDIR)

guilemoduledir="${datarootdir}/guile/site/${GUILE_EFFECTIVE_VERSION}"
AC_SUBST([guilemoduledir])
AC_SUBST([GUILE_EFFECTIVE_VERSION])

AC_CONFIG_FILES([Makefile])
AC_CONFIG_FILES([scripts/gep], [chmod +x scripts/gep])
AC_CONFIG_FILES([pre-inst-env], [chmod +x pre-inst-env])

AC_OUTPUT

dnl This is just for printing $libdir below.
LIBDIR=`eval echo $libdir`
LIBDIR=`eval echo $LIBDIR`
AC_SUBST([LIBDIR])

echo
echo "*** $PACKAGE $VERSION has been successfully configured ***"
echo
echo "$PACKAGE is using:"
echo
echo "    --prefix=$prefix --libdir=$LIBDIR"
echo
echo "If you want to install in Guile system's directory re-run with:"
echo
echo "    --prefix=$GUILE_PREFIX --libdir=$GUILE_LIBDIR"
echo
