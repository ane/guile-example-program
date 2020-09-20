# Guile Example Program, a skeleton for an executable Guile program

This repository is an example template for creating an application that is
programmed using [Guile](https://www.gnu.org/software/guile/). This repository
is actually just a useful bundle of [GNU
Autoconf](https://www.gnu.org/software/autoconf/) files that are necessary when
creating a distributable Guile application.

## What this example does

This example installs an executable Guile program called
`gep`. [`gep`](./scripts/gep) is a Scheme file that will then load the
[`example`](./example) module.

During installation, the module `example` will be compiled to bytecode. This
will make `gep` run quicker. These files will be installed in the Guile
[`%site-ccache-dir`](https://www.gnu.org/software/guile/manual/html_node/Installing-Site-Packages.html).

So, if you want to build a fully Guile-powered program, clone this repo and hack
away. I recommend that the `gep` script file in [`scripts/`](./scripts) stays
small, instead, try extending the `example` module as much as you can.

While developing, if you want to run the program, do

``` shell
./pre-inst-env scripts/gep <ARGS>
```

so that the load path is correct. This needs `./configure` to have been run.

## Installation

Clone this repository, run

```
./bootstrap
./configure
make
make install
```

This installs an executable script called `gep` in your path and it does nothing
in particular.

## Running unit tests

`make check`

## TODO

* Guix package description
* Support for various Scheme package managers:
    * [Akku](https://akkuscm.org/)
    * [Guildhall](https://github.com/ijp/guildhall)
    
## License

GNU GPL. See [COPYING](./COPYING).
