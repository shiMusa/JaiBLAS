#import "Basic";
#import,dir "../JaiBLAS";

main :: () {
    a := float.[1.0,2.0,3.0,4.0];
    b := float.[2.0,-3.0,4.0,-5.0];
    res := cblas_sdot(n=4, x=a.data, incx=1, y=b.data, incy=1);
    print("res = %\n", res);
    cblas_scopy(n=4, x=a.data, incx=1, y=b.data, incy=1);
    print("a = %\n", a);
    print("b = %\n", b);
}