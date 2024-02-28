# Description
When I want to find some key words in files, there is no really ez command for it.So I make it and upload for you.

`histr` is a simple tool for searching a string in files within a specified directory. It provides an easy way to search for occurrences of a given string in files recursively within a directory.

# Installation

To install `histr`, simply run the provided installer script.

```bash
./installer.sh -i
```

This will install the necessary dependencies and copy the required files to your system.

# Usage

Once installed, you can use `histr` from the command line. The basic usage is as follows:

```bash
histr <search_string> [<search_path>]
```

- `<search_string>`: The string to search for within the files.
- `<search_path>` (optional): The directory in which to search. If not provided, the current directory will be used as the default.

# Uninstallation

To uninstall `histr`, run the installer script with the `-u` option:

```bash
./installer.sh -u
```

This will remove `histr` from your system.

# Help

For additional information and usage instructions, you can display the help message by running:

```bash
./installer.sh -h
```

# Note

Ensure that you have the necessary permissions to execute the installer script and that Python 3 is installed on your system before proceeding with the installation.
