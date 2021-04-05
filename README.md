# THE BLACK UNICORN SOURCE MANAGER :unicorn:

[![Build Status](https://travis-ci.com/iamtheblackunicorn/bus.svg?branch=main)](https://travis-ci.com/iamtheblackunicorn/bus)

*The Black Unicorn Source Manager for Black Unicorn projects. :unicorn:*

## About

I wanted a uniform way to fetch the sources of my projects and build my projects. :black_heart: *Bus* is the tool for that.

## Building

### Prerequisites

You should have the following programs installed:

- Dart SDK
- Git
- Make

### Compilation

- 1.) Get the source:
```bash
$ git clone https://github.com/iamtheblackunicorn/bus.git
```

- 2.) Changing into the root source directory:
```bash
$ cd bus
```

- 3.) Update *Bus's* dependencies:
```bash
$ dart pub get
```

- 4.) Compiling an exectuable:
```bash
$ make build
```

This should produce an executable by the name of `bus` in a directory called `dist`.

### Installation

#### Linux & Mac OSX

Add this line to your `.zshrc`, `.bashrc` or `.bash_profile` in `$HOME`:

```bash
export PATH="$HOME/blackunicorn/bin:$PATH"
```
After having done that, create a directory called `blackunicorn` in `$HOME` and in `blackunicorn` a directory called `bin`.

#### Windows

Go to your Systemsettings, go to "This PC" or "My PC" and right-click that entry. Then go to "Edit Environment Variables".
Add this line to the dialog that appears:

```
C:\blackunicorn\bin
```

Save that and quit the System settings. After having done that, go to the File Explorer and create a directory called `blackunicorn` in `C:\` and in `blackunicorn` a directory called `bin`.

## Usage

*Bus* accepts six flags:

- 1.) Fetching a *Black Unicorn* project:
```bash
$ bus get Sequo
```

- 2.) Switching branches inside a *Black Unicorn* project:
```bash
$ bus switch main
```

- 3.) Building a *Black Unicorn* project:
```bash
$ bus build
```

- 4.) Getting the current version of the *Black Unicorn Source Manager*:
```bash
$ bus --version
```

- 5.) Updating the source of a *Black Unicorn* project:
```bash
$ bus update
```

- 6.) Updating *Bus*:
```bash
$ bus upgrade
```

## Note

- *Bus* by Alexander Abraham :black_heart: a.k.a *The Black Unicorn* :unicorn:
- licensed under the MIT license
