# daa2iso

> Convert PowerISO's `daa` disk images to standard `iso` [ISO-9660](https://en.wikipedia.org/wiki/ISO_9660) images.


## About

Original author of this code is [Luigi Auriemma](http://aluigi.org), to whom all the credits for this code belong. See also [the original readme](https://github.com/undisk/daa2iso/blob/master/daa2iso.txt).

`daa2iso`'s latest version was published around 2009, and has since been made available in some popular GNU/Linux distributions' official repositories, such as:

* [Ubuntu](https://packages.ubuntu.com/xenial/daa2iso)
* [Fedora](https://admin.fedoraproject.org/pkgdb/package/rpms/daa2iso/)

Original source code of `daa2iso` is available on [Luigi's website](http://aluigi.altervista.org/mytoolz.htm#daa2iso), and now on GitHub, mainly for posterity, and accessorily for the purpose of the [undisk-app](https://https://github.com/undisk/undisk-app).

Publishing on GitHub simplifies processes like automatic download-and-build the sources. An example of that is [daa2iso-bin](https://github.com/undisk/daa2iso-bin), a modularized version of `daa2iso` (usable with Node.js), which can compile this code on-the-fly when installed.

You can grab the latest untouched version (0.1.7e) found on Luigi's website from [our `0.1.7e` release](https://github.com/undisk/cdi2iso/releases/tag/0.1.7e).

All versions released after 0.1.7e differ from Luigi's original work, to include things like:

* build documentation (see below)
* pre-built binaries for GNU/Linux (x86|x64) and Windows (x86|x64) in the `build` directory
* separate Makefile for Windows


## Usage

### macOS, GNU/Linux

From the command line, convert `input.daa` to `output.iso` with the following command:

```
$ daa2iso input.daa output.iso
```

Get more info:

```
$ daa2iso --help
```

### Windows

From the command line, convert `input.daa` to `output.iso` with the following command:

```
$ daa2iso.exe input.daa output.iso
```

Get more info:

```
$ daa2iso.exe --help
```


## Build

If you're new to `C`/`C++` compilation, please see [our how-to about installing `gcc` and `make` commands on your system](https://github.com/undisk/guides/blob/master/install-gcc-make.md).

### macOS & GNU/Linux

Compile the sources to a binary named `daa2iso` (created in the `build` directory):

```
$ make
```

### Windows

Compile the sources to a binary named `daa2iso.exe` (created in the `build` directory):

```
$ make -f Makefile.win
```


## See also

* [daa2iso-bin](https://github.com/undisk/daa2iso-bin) | this project made available as a local dependency for Node.js module consumption
* [undisk](https://github.com/undisk/undisk) | Convert legacy/non-standard/proprietary disk images to standard `iso` ISO-9660 images with Node.js
* [undisk-cli](https://github.com/undisk/undisk-cli) | Convert legacy/non-standard/proprietary disk images to standard `iso` ISO-9660 images with your command-line
* [undisk-app](https://github.com/undisk/undisk-app) | An app that converts legacy/non-standard/proprietary disk images to standard `iso` ISO-9660 images


## License

[GPL-2.0](https://github.com/undisk/daa2iso/blob/master/licence)
