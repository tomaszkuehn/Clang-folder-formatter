# How to automatically format code in folder tree

1. Install clang-format v10.0 on Linux - tested on Mint64

Tested procedure is:

- install clang-format with standard tool: sudo apt-get install clang-format

OR

- download binary https://github.com/llvm/llvm-project/releases/download/llvmorg-10.0.0/clang+llvm-10.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz

- unpack

- find clang-format executable 

2. To reformat a file run (only for .cpp files):

```
clang-format -style=file <filename> > <new_filename>
```

-style=file indicates to read configuration from file .clang-format

# How to reformat many files at once

Use reformat.sh script. It will parse all subdirectories and create modified version of .c and .cpp files with .X suffix.

To run it you need to provide a parameter, folder name. For example to modify all files in core folder:

1. Go to the folder where the script is

2. Run script

```
reformat.sh ../../core
```

Don't forget to have a copy of .clang-format in the folder where you are running reformat.sh not in the core folder!
