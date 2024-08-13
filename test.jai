#import "Basic";
#import,dir "../JaiBLAS";

main :: () {
    // a := float.[1.0,2.0,3.0,4.0];
    // b := float.[2.0,-3.0,4.0,-5.0];

    a := NewArray(4, float);
    for 0..3 a[it] = cast(float)it;

    b := NewArray(4, float);
    for 0..3 b[it] = -1.0 * cast(float)it;

    ap : *float = a.data;
    bp : *float = b.data;

    res := cblas_sdot(n=4, x=a.data, incx=1, y=b.data, incy=1);
    print("res = %\n", res);
    print("a = %\n", a);
    print("b = %\n", b);
    a[0] = 3.131;
    b[0] = -3.141;
    print("a = %\n", a);
    print("b = %\n", b);
    print("a = %\n", a.data);
    print("b = %\n", b.data);
    cblas_scopy(n=4, x=ap, incx=1, y=bp, incy=1);
    print("a = %\n", a);
    print("b = %\n", b);
}