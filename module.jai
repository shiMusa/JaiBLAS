#import "Basic";

#if OS == .WINDOWS {
    #load "jaiblas_windows.jai";
} else {
    assert(false);
}