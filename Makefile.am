include guile.am

bin_SCRIPTS =						\
  scripts/gep

moddir = $(prefix)/share/guile/site/$(GUILE_EFFECTIVE_VERSION)
godir  = $(libdir)/guile/$(GUILE_EFFECTIVE_VERSION)/site-ccache

SOURCES =					\
  example/core.scm

TEST_EXTENSIONS = .scm

SCM_TESTS = \
  tests/example.scm 

TESTS = $(SCM_TESTS)

AM_TESTS_ENVIRONMENT = abs_top_srcdir="$(abs_top_srcdir)" GUILE_AUTO_COMPILE=0

SCM_LOG_DRIVER =                                          \
  $(top_builddir)/pre-inst-env                            \
  $(GUILE) --no-auto-compile -e main                      \
  $(top_srcdir)/test-driver.scm

AM_SCM_LOG_DRIVER_FLAGS = --brief=yes

EXTRA_DIST +=					\
  pre-inst-env.in				\
  build-aux/test-driver.scm
