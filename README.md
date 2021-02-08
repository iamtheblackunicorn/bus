# BLACK UNICORN SOURCE MANAGER

## About

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

Add this line to your `.zshrc` or `.bashrc` or `.bash_profile` in `$HOME`:

```bash
export PATH=$HOME/blackunicorn/bin:$PATH
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

*Bus* accepts four flags:

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

- 4.) Building a *Black Unicorn* project:
```bash
$ bus --version
```
