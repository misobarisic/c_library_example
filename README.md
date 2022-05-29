## C Library Example

This is a simple static/shared C library example. It contains a simple library alongside a makefile.


### Building

#### Static
`make static-bin`, binary file can be executed immediately.


#### Shared
`make shared-bin`, binary file can not be executed immediately since `/usr/lib` does not contain `liblife.so`.
Solved by running `mv bin/shared/liblife.so /usr/lib; chmod 755 /usr/lib/liblife.so` or by adding an environment variable such as ` LD_LIBRARY_PATH=$(pwd)/bin/shared bin/use-shared-library`


