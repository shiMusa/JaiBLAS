# JaiBLAS

This is an OpenBLAS wrapper for Jai. 
**Note:** Some function had to be commented out (see the `jaiblas_windows.jai` file) because the bindings generator couldn't find them in the library This might be a cblas issue.

Currently only for Windows. Feel free to add linux/macOS support.

Future Plan is to write simplified functions Jai-style, e.g. instead of having `ddot` and `sdot` etc., just have one overloaded `dot` function.

see `test.jai` for a simple example of how to use.

Cheers
