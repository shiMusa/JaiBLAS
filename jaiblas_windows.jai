//
// This file was auto-generated using the following command:
//
// jai first.jai
//



OPENBLAS_OS_WINNT :: 1;
OPENBLAS_ARCH_X86_64 :: 1;
OPENBLAS_C_GCC :: 1;
OPENBLAS___64BIT__ :: 1;
OPENBLAS_HAVE_C11 :: 1;

OPENBLAS_NEEDBUNDERSCORE :: 1;

OPENBLAS_L1_DATA_SIZE :: 32768;
OPENBLAS_L1_DATA_LINESIZE :: 128;
OPENBLAS_L2_SIZE :: 512488;
OPENBLAS_L2_LINESIZE :: 128;
OPENBLAS_DTB_DEFAULT_ENTRIES :: 128;
OPENBLAS_DTB_SIZE :: 4096;
OPENBLAS_L2_ASSOCIATIVE :: 8;

OPENBLAS_CHAR_CORENAME :: "generic";
OPENBLAS_SLOCAL_BUFFER_SIZE :: 4096;
OPENBLAS_DLOCAL_BUFFER_SIZE :: 4096;
OPENBLAS_CLOCAL_BUFFER_SIZE :: 8192;
OPENBLAS_ZLOCAL_BUFFER_SIZE :: 8192;
OPENBLAS_GEMM_MULTITHREAD_THRESHOLD :: 4;
OPENBLAS_VERSION :: " OpenBLAS 0.3.24 ";

OPENBLAS_SEQUENTIAL :: 0;

OPENBLAS_THREAD :: 1;

OPENBLAS_OPENMP :: 2;

CBLAS_INDEX :: u64;

lapack_int :: s32;

lapack_logical :: lapack_int;

LAPACK_ROW_MAJOR :: 101;
LAPACK_COL_MAJOR :: 102;

LAPACK_WORK_MEMORY_ERROR :: -1010;
LAPACK_TRANSPOSE_MEMORY_ERROR :: -1011;

BLASLONG :: s64;
BLASULONG :: u64;

bfloat16 :: u16;

blasint :: s32;

openblas_complex_float :: struct {
    real: float;
    imag: float;
}
openblas_complex_double :: struct {
    real: float64;
    imag: float64;
}
openblas_complex_xdouble :: struct {
    real: float64;
    imag: float64;
}

/*Set the number of threads on runtime.*/
openblas_set_num_threads :: (num_threads: s32) -> void #foreign libopenblas;
goto_set_num_threads :: (num_threads: s32) -> void #foreign libopenblas;

/*Get the number of threads on runtime.*/
openblas_get_num_threads :: () -> s32 #foreign libopenblas;

/*Get the number of physical processors (cores).*/
openblas_get_num_procs :: () -> s32 #foreign libopenblas;

/*Get the build configure on runtime.*/
openblas_get_config :: () -> *u8 #foreign libopenblas;

/*Get the CPU corename on runtime.*/
openblas_get_corename :: () -> *u8 #foreign libopenblas;

/* Get the parallelization type which is used by OpenBLAS */
openblas_get_parallel :: () -> s32 #foreign libopenblas;

CBLAS_ORDER :: enum s32 {
    RowMajor :: 101;
    ColMajor :: 102;
    CblasRowMajor :: RowMajor;
    CblasColMajor :: ColMajor;
}
CBLAS_TRANSPOSE :: enum s32 {
    NoTrans     :: 111;
    Trans       :: 112;
    ConjTrans   :: 113;
    ConjNoTrans :: 114;
    CblasNoTrans     :: NoTrans;
    CblasTrans       :: Trans;
    CblasConjTrans   :: ConjTrans;
    CblasConjNoTrans :: ConjNoTrans;
}
CBLAS_UPLO :: enum s32 {
    Upper :: 121;
    Lower :: 122;
    CblasUpper :: Upper;
    CblasLower :: Lower;
}
CBLAS_DIAG :: enum s32 {
    NonUnit :: 131;
    Unit    :: 132;
    CblasNonUnit :: NonUnit;
    CblasUnit    :: Unit;
}
CBLAS_SIDE :: enum s32 {
    Left  :: 141;
    Right :: 142;
    CblasLeft  :: Left;
    CblasRight :: Right;
}
CBLAS_LAYOUT :: CBLAS_ORDER;

cblas_sdsdot :: (n: blasint, alpha: float, x: *float, incx: blasint, y: *float, incy: blasint) -> float #foreign libopenblas;
cblas_dsdot :: (n: blasint, x: *float, incx: blasint, y: *float, incy: blasint) -> float64 #foreign libopenblas;
cblas_sdot :: (n: blasint, x: *float, incx: blasint, y: *float, incy: blasint) -> float #foreign libopenblas;
cblas_ddot :: (n: blasint, x: *float64, incx: blasint, y: *float64, incy: blasint) -> float64 #foreign libopenblas;

cblas_cdotu :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> openblas_complex_float #foreign libopenblas;
cblas_cdotc :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> openblas_complex_float #foreign libopenblas;
cblas_zdotu :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> openblas_complex_double #foreign libopenblas;
cblas_zdotc :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> openblas_complex_double #foreign libopenblas;

cblas_cdotu_sub :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint, ret: *void) -> void #foreign libopenblas;
cblas_cdotc_sub :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint, ret: *void) -> void #foreign libopenblas;
cblas_zdotu_sub :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint, ret: *void) -> void #foreign libopenblas;
cblas_zdotc_sub :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint, ret: *void) -> void #foreign libopenblas;

cblas_sasum :: (n: blasint, x: *float, incx: blasint) -> float #foreign libopenblas;
cblas_dasum :: (n: blasint, x: *float64, incx: blasint) -> float64 #foreign libopenblas;
cblas_scasum :: (n: blasint, x: *void, incx: blasint) -> float #foreign libopenblas;
cblas_dzasum :: (n: blasint, x: *void, incx: blasint) -> float64 #foreign libopenblas;

cblas_ssum :: (n: blasint, x: *float, incx: blasint) -> float #foreign libopenblas;
cblas_dsum :: (n: blasint, x: *float64, incx: blasint) -> float64 #foreign libopenblas;
cblas_scsum :: (n: blasint, x: *void, incx: blasint) -> float #foreign libopenblas;
cblas_dzsum :: (n: blasint, x: *void, incx: blasint) -> float64 #foreign libopenblas;

cblas_snrm2 :: (N: blasint, X: *float, incX: blasint) -> float #foreign libopenblas;
cblas_dnrm2 :: (N: blasint, X: *float64, incX: blasint) -> float64 #foreign libopenblas;
cblas_scnrm2 :: (N: blasint, X: *void, incX: blasint) -> float #foreign libopenblas;
cblas_dznrm2 :: (N: blasint, X: *void, incX: blasint) -> float64 #foreign libopenblas;

cblas_isamax :: (n: blasint, x: *float, incx: blasint) -> u64 #foreign libopenblas;
cblas_idamax :: (n: blasint, x: *float64, incx: blasint) -> u64 #foreign libopenblas;
cblas_icamax :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;
cblas_izamax :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;

cblas_isamin :: (n: blasint, x: *float, incx: blasint) -> u64 #foreign libopenblas;
cblas_idamin :: (n: blasint, x: *float64, incx: blasint) -> u64 #foreign libopenblas;
cblas_icamin :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;
cblas_izamin :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;

cblas_ismax :: (n: blasint, x: *float, incx: blasint) -> u64 #foreign libopenblas;
cblas_idmax :: (n: blasint, x: *float64, incx: blasint) -> u64 #foreign libopenblas;
cblas_icmax :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;
cblas_izmax :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;

cblas_ismin :: (n: blasint, x: *float, incx: blasint) -> u64 #foreign libopenblas;
cblas_idmin :: (n: blasint, x: *float64, incx: blasint) -> u64 #foreign libopenblas;
cblas_icmin :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;
cblas_izmin :: (n: blasint, x: *void, incx: blasint) -> u64 #foreign libopenblas;

cblas_saxpy :: (n: blasint, alpha: float, x: *float, incx: blasint, y: *float, incy: blasint) -> void #foreign libopenblas;
cblas_daxpy :: (n: blasint, alpha: float64, x: *float64, incx: blasint, y: *float64, incy: blasint) -> void #foreign libopenblas;
cblas_caxpy :: (n: blasint, alpha: *void, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;
cblas_zaxpy :: (n: blasint, alpha: *void, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_scopy :: (n: blasint, x: *float, incx: blasint, y: *float, incy: blasint) -> void #foreign libopenblas;
cblas_dcopy :: (n: blasint, x: *float64, incx: blasint, y: *float64, incy: blasint) -> void #foreign libopenblas;
cblas_ccopy :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;
cblas_zcopy :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_sswap :: (n: blasint, x: *float, incx: blasint, y: *float, incy: blasint) -> void #foreign libopenblas;
cblas_dswap :: (n: blasint, x: *float64, incx: blasint, y: *float64, incy: blasint) -> void #foreign libopenblas;
cblas_cswap :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;
cblas_zswap :: (n: blasint, x: *void, incx: blasint, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_srot :: (N: blasint, X: *float, incX: blasint, Y: *float, incY: blasint, c: float, s: float) -> void #foreign libopenblas;
cblas_drot :: (N: blasint, X: *float64, incX: blasint, Y: *float64, incY: blasint, c: float64, s: float64) -> void #foreign libopenblas;
// cblas_csrot :: (n: blasint, x: *void, incx: blasint, y: *void, incY: blasint, c: float, s: float) -> void #foreign __UnknownLib;
// cblas_zdrot :: (n: blasint, x: *void, incx: blasint, y: *void, incY: blasint, c: float64, s: float64) -> void #foreign __UnknownLib;

cblas_srotg :: (a: *float, b: *float, c: *float, s: *float) -> void #foreign libopenblas;
cblas_drotg :: (a: *float64, b: *float64, c: *float64, s: *float64) -> void #foreign libopenblas;
// cblas_crotg :: (a: *void, b: *void, c: *float, s: *void) -> void #foreign __UnknownLib;
// cblas_zrotg :: (a: *void, b: *void, c: *float64, s: *void) -> void #foreign __UnknownLib;

cblas_srotm :: (N: blasint, X: *float, incX: blasint, Y: *float, incY: blasint, P: *float) -> void #foreign libopenblas;
cblas_drotm :: (N: blasint, X: *float64, incX: blasint, Y: *float64, incY: blasint, P: *float64) -> void #foreign libopenblas;

cblas_srotmg :: (d1: *float, d2: *float, b1: *float, b2: float, P: *float) -> void #foreign libopenblas;
cblas_drotmg :: (d1: *float64, d2: *float64, b1: *float64, b2: float64, P: *float64) -> void #foreign libopenblas;

cblas_sscal :: (N: blasint, alpha: float, X: *float, incX: blasint) -> void #foreign libopenblas;
cblas_dscal :: (N: blasint, alpha: float64, X: *float64, incX: blasint) -> void #foreign libopenblas;
cblas_cscal :: (N: blasint, alpha: *void, X: *void, incX: blasint) -> void #foreign libopenblas;
cblas_zscal :: (N: blasint, alpha: *void, X: *void, incX: blasint) -> void #foreign libopenblas;
cblas_csscal :: (N: blasint, alpha: float, X: *void, incX: blasint) -> void #foreign libopenblas;
cblas_zdscal :: (N: blasint, alpha: float64, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_sgemv :: (order: CBLAS_ORDER, trans: CBLAS_TRANSPOSE, m: blasint, n: blasint, alpha: float, a: *float, lda: blasint, x: *float, incx: blasint, beta: float, y: *float, incy: blasint) -> void #foreign libopenblas;

cblas_dgemv :: (order: CBLAS_ORDER, trans: CBLAS_TRANSPOSE, m: blasint, n: blasint, alpha: float64, a: *float64, lda: blasint, x: *float64, incx: blasint, beta: float64, y: *float64, incy: blasint) -> void #foreign libopenblas;

cblas_cgemv :: (order: CBLAS_ORDER, trans: CBLAS_TRANSPOSE, m: blasint, n: blasint, alpha: *void, a: *void, lda: blasint, x: *void, incx: blasint, beta: *void, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_zgemv :: (order: CBLAS_ORDER, trans: CBLAS_TRANSPOSE, m: blasint, n: blasint, alpha: *void, a: *void, lda: blasint, x: *void, incx: blasint, beta: *void, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_sger :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: float, X: *float, incX: blasint, Y: *float, incY: blasint, A: *float, lda: blasint) -> void #foreign libopenblas;
cblas_dger :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: float64, X: *float64, incX: blasint, Y: *float64, incY: blasint, A: *float64, lda: blasint) -> void #foreign libopenblas;
cblas_cgeru :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;
cblas_cgerc :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;
cblas_zgeru :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;
cblas_zgerc :: (order: CBLAS_ORDER, M: blasint, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;

cblas_strsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *float, lda: blasint, X: *float, incX: blasint) -> void #foreign libopenblas;
cblas_dtrsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *float64, lda: blasint, X: *float64, incX: blasint) -> void #foreign libopenblas;
cblas_ctrsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;
cblas_ztrsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_strmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *float, lda: blasint, X: *float, incX: blasint) -> void #foreign libopenblas;
cblas_dtrmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *float64, lda: blasint, X: *float64, incX: blasint) -> void #foreign libopenblas;
cblas_ctrmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;
cblas_ztrmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ssyr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *float, incX: blasint, A: *float, lda: blasint) -> void #foreign libopenblas;
cblas_dsyr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *float64, incX: blasint, A: *float64, lda: blasint) -> void #foreign libopenblas;
cblas_cher :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *void, incX: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;
cblas_zher :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *void, incX: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;

cblas_ssyr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *float, incX: blasint, Y: *float, incY: blasint, A: *float, lda: blasint) -> void #foreign libopenblas;

cblas_dsyr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *float64, incX: blasint, Y: *float64, incY: blasint, A: *float64, lda: blasint) -> void #foreign libopenblas;

cblas_cher2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;

cblas_zher2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, A: *void, lda: blasint) -> void #foreign libopenblas;

cblas_sgbmv :: (order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, M: blasint, N: blasint, KL: blasint, KU: blasint, alpha: float, A: *float, lda: blasint, X: *float, incX: blasint, beta: float, Y: *float, incY: blasint) -> void #foreign libopenblas;

cblas_dgbmv :: (order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, M: blasint, N: blasint, KL: blasint, KU: blasint, alpha: float64, A: *float64, lda: blasint, X: *float64, incX: blasint, beta: float64, Y: *float64, incY: blasint) -> void #foreign libopenblas;

cblas_cgbmv :: (order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, M: blasint, N: blasint, KL: blasint, KU: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_zgbmv :: (order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, M: blasint, N: blasint, KL: blasint, KU: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_ssbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, K: blasint, alpha: float, A: *float, lda: blasint, X: *float, incX: blasint, beta: float, Y: *float, incY: blasint) -> void #foreign libopenblas;

cblas_dsbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, K: blasint, alpha: float64, A: *float64, lda: blasint, X: *float64, incX: blasint, beta: float64, Y: *float64, incY: blasint) -> void #foreign libopenblas;

cblas_stbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *float, lda: blasint, X: *float, incX: blasint) -> void #foreign libopenblas;

cblas_dtbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *float64, lda: blasint, X: *float64, incX: blasint) -> void #foreign libopenblas;

cblas_ctbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ztbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_stbsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *float, lda: blasint, X: *float, incX: blasint) -> void #foreign libopenblas;

cblas_dtbsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *float64, lda: blasint, X: *float64, incX: blasint) -> void #foreign libopenblas;

cblas_ctbsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ztbsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, K: blasint, A: *void, lda: blasint, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_stpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *float, X: *float, incX: blasint) -> void #foreign libopenblas;

cblas_dtpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *float64, X: *float64, incX: blasint) -> void #foreign libopenblas;

cblas_ctpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *void, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ztpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *void, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_stpsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *float, X: *float, incX: blasint) -> void #foreign libopenblas;

cblas_dtpsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *float64, X: *float64, incX: blasint) -> void #foreign libopenblas;

cblas_ctpsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *void, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ztpsv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, N: blasint, Ap: *void, X: *void, incX: blasint) -> void #foreign libopenblas;

cblas_ssymv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, A: *float, lda: blasint, X: *float, incX: blasint, beta: float, Y: *float, incY: blasint) -> void #foreign libopenblas;

cblas_dsymv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, A: *float64, lda: blasint, X: *float64, incX: blasint, beta: float64, Y: *float64, incY: blasint) -> void #foreign libopenblas;

cblas_chemv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_zhemv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_sspmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, Ap: *float, X: *float, incX: blasint, beta: float, Y: *float, incY: blasint) -> void #foreign libopenblas;

cblas_dspmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, Ap: *float64, X: *float64, incX: blasint, beta: float64, Y: *float64, incY: blasint) -> void #foreign libopenblas;

cblas_sspr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *float, incX: blasint, Ap: *float) -> void #foreign libopenblas;
cblas_dspr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *float64, incX: blasint, Ap: *float64) -> void #foreign libopenblas;

cblas_chpr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *void, incX: blasint, A: *void) -> void #foreign libopenblas;
cblas_zhpr :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *void, incX: blasint, A: *void) -> void #foreign libopenblas;

cblas_sspr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float, X: *float, incX: blasint, Y: *float, incY: blasint, A: *float) -> void #foreign libopenblas;
cblas_dspr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: float64, X: *float64, incX: blasint, Y: *float64, incY: blasint, A: *float64) -> void #foreign libopenblas;
cblas_chpr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, Ap: *void) -> void #foreign libopenblas;
cblas_zhpr2 :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, X: *void, incX: blasint, Y: *void, incY: blasint, Ap: *void) -> void #foreign libopenblas;

cblas_chbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_zhbmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_chpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, Ap: *void, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_zhpmv :: (order: CBLAS_ORDER, Uplo: CBLAS_UPLO, N: blasint, alpha: *void, Ap: *void, X: *void, incX: blasint, beta: *void, Y: *void, incY: blasint) -> void #foreign libopenblas;

cblas_sgemm :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: float, A: *float, lda: blasint, B: *float, ldb: blasint, beta: float, C: *float, ldc: blasint) -> void #foreign libopenblas;

cblas_dgemm :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: float64, A: *float64, lda: blasint, B: *float64, ldb: blasint, beta: float64, C: *float64, ldc: blasint) -> void #foreign libopenblas;

cblas_cgemm :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_cgemm3m :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zgemm :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zgemm3m :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_ssymm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: float, A: *float, lda: blasint, B: *float, ldb: blasint, beta: float, C: *float, ldc: blasint) -> void #foreign libopenblas;

cblas_dsymm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: float64, A: *float64, lda: blasint, B: *float64, ldb: blasint, beta: float64, C: *float64, ldc: blasint) -> void #foreign libopenblas;

cblas_csymm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zsymm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_ssyrk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float, A: *float, lda: blasint, beta: float, C: *float, ldc: blasint) -> void #foreign libopenblas;

cblas_dsyrk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float64, A: *float64, lda: blasint, beta: float64, C: *float64, ldc: blasint) -> void #foreign libopenblas;

cblas_csyrk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zsyrk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_ssyr2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float, A: *float, lda: blasint, B: *float, ldb: blasint, beta: float, C: *float, ldc: blasint) -> void #foreign libopenblas;

cblas_dsyr2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float64, A: *float64, lda: blasint, B: *float64, ldb: blasint, beta: float64, C: *float64, ldc: blasint) -> void #foreign libopenblas;

cblas_csyr2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zsyr2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_strmm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: float, A: *float, lda: blasint, B: *float, ldb: blasint) -> void #foreign libopenblas;

cblas_dtrmm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: float64, A: *float64, lda: blasint, B: *float64, ldb: blasint) -> void #foreign libopenblas;

cblas_ctrmm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint) -> void #foreign libopenblas;

cblas_ztrmm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint) -> void #foreign libopenblas;

cblas_strsm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: float, A: *float, lda: blasint, B: *float, ldb: blasint) -> void #foreign libopenblas;

cblas_dtrsm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: float64, A: *float64, lda: blasint, B: *float64, ldb: blasint) -> void #foreign libopenblas;

cblas_ctrsm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint) -> void #foreign libopenblas;

cblas_ztrsm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, TransA: CBLAS_TRANSPOSE, Diag: CBLAS_DIAG, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint) -> void #foreign libopenblas;

cblas_chemm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zhemm :: (Order: CBLAS_ORDER, Side: CBLAS_SIDE, Uplo: CBLAS_UPLO, M: blasint, N: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: *void, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_cherk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float, A: *void, lda: blasint, beta: float, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zherk :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: float64, A: *void, lda: blasint, beta: float64, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_cher2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: float, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_zher2k :: (Order: CBLAS_ORDER, Uplo: CBLAS_UPLO, Trans: CBLAS_TRANSPOSE, N: blasint, K: blasint, alpha: *void, A: *void, lda: blasint, B: *void, ldb: blasint, beta: float64, C: *void, ldc: blasint) -> void #foreign libopenblas;

cblas_xerbla_CFormat :: (p: blasint, rout: *u8, form: *u8, __args: ..Any) -> void #foreign libopenblas "cblas_xerbla";
cblas_xerbla :: (p: blasint, rout: *u8, form: string, __args: ..Any) {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, form, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    cblas_xerbla_CFormat(p, rout, "%s", formatted_text.data);
} @PrintLike

/*** BLAS extensions ***/
cblas_saxpby :: (n: blasint, alpha: float, x: *float, incx: blasint, beta: float, y: *float, incy: blasint) -> void #foreign libopenblas;

cblas_daxpby :: (n: blasint, alpha: float64, x: *float64, incx: blasint, beta: float64, y: *float64, incy: blasint) -> void #foreign libopenblas;

cblas_caxpby :: (n: blasint, alpha: *void, x: *void, incx: blasint, beta: *void, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_zaxpby :: (n: blasint, alpha: *void, x: *void, incx: blasint, beta: *void, y: *void, incy: blasint) -> void #foreign libopenblas;

cblas_somatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: float, a: *float, clda: blasint, b: *float, cldb: blasint) -> void #foreign libopenblas;

cblas_domatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: float64, a: *float64, clda: blasint, b: *float64, cldb: blasint) -> void #foreign libopenblas;

cblas_comatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: *float, a: *float, clda: blasint, b: *float, cldb: blasint) -> void #foreign libopenblas;

cblas_zomatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: *float64, a: *float64, clda: blasint, b: *float64, cldb: blasint) -> void #foreign libopenblas;

cblas_simatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: float, a: *float, clda: blasint, cldb: blasint) -> void #foreign libopenblas;

cblas_dimatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: float64, a: *float64, clda: blasint, cldb: blasint) -> void #foreign libopenblas;

cblas_cimatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: *float, a: *float, clda: blasint, cldb: blasint) -> void #foreign libopenblas;

cblas_zimatcopy :: (CORDER: CBLAS_ORDER, CTRANS: CBLAS_TRANSPOSE, crows: blasint, ccols: blasint, calpha: *float64, a: *float64, clda: blasint, cldb: blasint) -> void #foreign libopenblas;

cblas_sgeadd :: (CORDER: CBLAS_ORDER, crows: blasint, ccols: blasint, calpha: float, a: *float, clda: blasint, cbeta: float, c: *float, cldc: blasint) -> void #foreign libopenblas;

cblas_dgeadd :: (CORDER: CBLAS_ORDER, crows: blasint, ccols: blasint, calpha: float64, a: *float64, clda: blasint, cbeta: float64, c: *float64, cldc: blasint) -> void #foreign libopenblas;

cblas_cgeadd :: (CORDER: CBLAS_ORDER, crows: blasint, ccols: blasint, calpha: *float, a: *float, clda: blasint, cbeta: *float, c: *float, cldc: blasint) -> void #foreign libopenblas;

cblas_zgeadd :: (CORDER: CBLAS_ORDER, crows: blasint, ccols: blasint, calpha: *float64, a: *float64, clda: blasint, cbeta: *float64, c: *float64, cldc: blasint) -> void #foreign libopenblas;

/*** BFLOAT16 and INT8 extensions ***/
/* convert float array to BFLOAT16 array by rounding */
// cblas_sbstobf16 :: (n: blasint, in: *float, incin: blasint, out: *bfloat16, incout: blasint) -> void #foreign __UnknownLib;

/* convert double array to BFLOAT16 array by rounding */
// cblas_sbdtobf16 :: (n: blasint, in: *float64, incin: blasint, out: *bfloat16, incout: blasint) -> void #foreign __UnknownLib;

/* convert BFLOAT16 array to float array */
// cblas_sbf16tos :: (n: blasint, in: *bfloat16, incin: blasint, out: *float, incout: blasint) -> void #foreign __UnknownLib;

/* convert BFLOAT16 array to double array */
// cblas_dbf16tod :: (n: blasint, in: *bfloat16, incin: blasint, out: *float64, incout: blasint) -> void #foreign __UnknownLib;

/* dot production of BFLOAT16 input arrays, and output as float */
// cblas_sbdot :: (n: blasint, x: *bfloat16, incx: blasint, y: *bfloat16, incy: blasint) -> float #foreign __UnknownLib;
// cblas_sbgemv :: (order: CBLAS_ORDER, trans: CBLAS_TRANSPOSE, m: blasint, n: blasint, alpha: float, a: *bfloat16, lda: blasint, x: *bfloat16, incx: blasint, beta: float, y: *float, incy: blasint) -> void #foreign __UnknownLib;

// cblas_sbgemm :: (Order: CBLAS_ORDER, TransA: CBLAS_TRANSPOSE, TransB: CBLAS_TRANSPOSE, M: blasint, N: blasint, K: blasint, alpha: float, A: *bfloat16, lda: blasint, B: *bfloat16, ldb: blasint, beta: float, C: *float, ldc: blasint) -> void #foreign __UnknownLib;

lapack_float_return :: float;

/* Callback logical functions of one, two, or three arguments are used
*  to select eigenvalues to sort to the top left of the Schur form.
*  The value is selected if function returns TRUE (non-zero). */
LAPACK_S_SELECT2 :: #type (unknown0: *float, unknown1: *float) -> s32 #c_call;
LAPACK_S_SELECT3 :: #type (unknown0: *float, unknown1: *float, unknown2: *float) -> s32 #c_call;

LAPACK_D_SELECT2 :: #type (unknown0: *float64, unknown1: *float64) -> s32 #c_call;
LAPACK_D_SELECT3 :: #type (unknown0: *float64, unknown1: *float64, unknown2: *float64) -> s32 #c_call;

lsame_ :: (ca: *u8, cb: *u8, lca: s32, lcb: s32, unknown0: u64, unknown1: u64) -> s32 #foreign libopenblas;

dbbcsd_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, jobv2t: *u8, trans: *u8, m: *s32, p: *s32, q: *s32, theta: *float64, phi: *float64, U1: *float64, ldu1: *s32, U2: *float64, ldu2: *s32, V1T: *float64, ldv1t: *s32, V2T: *float64, ldv2t: *s32, B11D: *float64, B11E: *float64, B12D: *float64, B12E: *float64, b21d: *float64, b21e: *float64, b22d: *float64, b22e: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

sbbcsd_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, jobv2t: *u8, trans: *u8, m: *s32, p: *s32, q: *s32, theta: *float, phi: *float, U1: *float, ldu1: *s32, U2: *float, ldu2: *s32, V1T: *float, ldv1t: *s32, V2T: *float, ldv2t: *s32, B11D: *float, B11E: *float, B12D: *float, B12E: *float, B21D: *float, B21E: *float, B22D: *float, B22E: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

dbdsdc_ :: (uplo: *u8, compq: *u8, n: *s32, D: *float64, E: *float64, U: *float64, ldu: *s32, VT: *float64, ldvt: *s32, Q: *float64, IQ: *s32, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sbdsdc_ :: (uplo: *u8, compq: *u8, n: *s32, D: *float, E: *float, U: *float, ldu: *s32, VT: *float, ldvt: *s32, Q: *float, IQ: *s32, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dbdsqr_ :: (uplo: *u8, n: *s32, ncvt: *s32, nru: *s32, ncc: *s32, D: *float64, E: *float64, VT: *float64, ldvt: *s32, U: *float64, ldu: *s32, C: *float64, ldc: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sbdsqr_ :: (uplo: *u8, n: *s32, ncvt: *s32, nru: *s32, ncc: *s32, D: *float, E: *float, VT: *float, ldvt: *s32, U: *float, ldu: *s32, C: *float, ldc: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dbdsvdx_ :: (uplo: *u8, jobz: *u8, range: *u8, n: *s32, D: *float64, E: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, ns: *s32, S: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sbdsvdx_ :: (uplo: *u8, jobz: *u8, range: *u8, n: *s32, D: *float, E: *float, vl: *float, vu: *float, il: *s32, iu: *s32, ns: *s32, S: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ddisna_ :: (job: *u8, m: *s32, n: *s32, D: *float64, SEP: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sdisna_ :: (job: *u8, m: *s32, n: *s32, D: *float, SEP: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgbbrd_ :: (vect: *u8, m: *s32, n: *s32, ncc: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, D: *float64, E: *float64, Q: *float64, ldq: *s32, PT: *float64, ldpt: *s32, C: *float64, ldc: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgbbrd_ :: (vect: *u8, m: *s32, n: *s32, ncc: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, D: *float, E: *float, Q: *float, ldq: *s32, PT: *float, ldpt: *s32, C: *float, ldc: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgbcon_ :: (norm: *u8, n: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, ipiv: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgbcon_ :: (norm: *u8, n: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, ipiv: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgbequ_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, R: *float64, C: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

sgbequ_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, R: *float, C: *float, rowcnd: *float, colcnd: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dgbequb_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, R: *float64, C: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

sgbequb_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, R: *float, C: *float, rowcnd: *float, colcnd: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dgbrfs_ :: (trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgbrfs_ :: (trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

// dgbrfsx_ :: (trans: *u8, equed: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, ipiv: *s32, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

// sgbrfsx_ :: (trans: *u8, equed: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, ipiv: *s32, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

dgbsv_ :: (n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32) -> void #foreign libopenblas;

sgbsv_ :: (n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32) -> void #foreign libopenblas;

dgbsvx_ :: (fact: *u8, trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, ipiv: *s32, equed: *u8, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgbsvx_ :: (fact: *u8, trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, ipiv: *s32, equed: *u8, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

// dgbsvxx_ :: (fact: *u8, trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, ipiv: *s32, equed: *u8, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

// sgbsvxx_ :: (fact: *u8, trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, ipiv: *s32, equed: *u8, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

dgbtrf_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

sgbtrf_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

dgbtrs_ :: (trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float64, ldab: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgbtrs_ :: (trans: *u8, n: *s32, kl: *s32, ku: *s32, nrhs: *s32, AB: *float, ldab: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgebak_ :: (job: *u8, side: *u8, n: *s32, ilo: *s32, ihi: *s32, scale: *float64, m: *s32, V: *float64, ldv: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgebak_ :: (job: *u8, side: *u8, n: *s32, ilo: *s32, ihi: *s32, scale: *float, m: *s32, V: *float, ldv: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgebal_ :: (job: *u8, n: *s32, A: *float64, lda: *s32, ilo: *s32, ihi: *s32, scale: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgebal_ :: (job: *u8, n: *s32, A: *float, lda: *s32, ilo: *s32, ihi: *s32, scale: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgebrd_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, D: *float64, E: *float64, tauq: *float64, taup: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgebrd_ :: (m: *s32, n: *s32, A: *float, lda: *s32, D: *float, E: *float, tauq: *float, taup: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgecon_ :: (norm: *u8, n: *s32, A: *float64, lda: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgecon_ :: (norm: *u8, n: *s32, A: *float, lda: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgeequ_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, R: *float64, C: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

sgeequ_ :: (m: *s32, n: *s32, A: *float, lda: *s32, R: *float, C: *float, rowcnd: *float, colcnd: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dgeequb_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, R: *float64, C: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

sgeequb_ :: (m: *s32, n: *s32, A: *float, lda: *s32, R: *float, C: *float, rowcnd: *float, colcnd: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dgees_ :: (jobvs: *u8, sort: *u8, select: LAPACK_D_SELECT2, n: *s32, A: *float64, lda: *s32, sdim: *s32, WR: *float64, WI: *float64, VS: *float64, ldvs: *s32, work: *float64, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgees_ :: (jobvs: *u8, sort: *u8, select: LAPACK_S_SELECT2, n: *s32, A: *float, lda: *s32, sdim: *s32, WR: *float, WI: *float, VS: *float, ldvs: *s32, work: *float, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgeesx_ :: (jobvs: *u8, sort: *u8, select: LAPACK_D_SELECT2, sense: *u8, n: *s32, A: *float64, lda: *s32, sdim: *s32, WR: *float64, WI: *float64, VS: *float64, ldvs: *s32, rconde: *float64, rcondv: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgeesx_ :: (jobvs: *u8, sort: *u8, select: LAPACK_S_SELECT2, sense: *u8, n: *s32, A: *float, lda: *s32, sdim: *s32, WR: *float, WI: *float, VS: *float, ldvs: *s32, rconde: *float, rcondv: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dgeev_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float64, lda: *s32, WR: *float64, WI: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgeev_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float, lda: *s32, WR: *float, WI: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgeevx_ :: (balanc: *u8, jobvl: *u8, jobvr: *u8, sense: *u8, n: *s32, A: *float64, lda: *s32, WR: *float64, WI: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, ilo: *s32, ihi: *s32, scale: *float64, abnrm: *float64, rconde: *float64, rcondv: *float64, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

sgeevx_ :: (balanc: *u8, jobvl: *u8, jobvr: *u8, sense: *u8, n: *s32, A: *float, lda: *s32, WR: *float, WI: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, ilo: *s32, ihi: *s32, scale: *float, abnrm: *float, rconde: *float, rcondv: *float, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dgehrd_ :: (n: *s32, ilo: *s32, ihi: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgehrd_ :: (n: *s32, ilo: *s32, ihi: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgejsv_ :: (joba: *u8, jobu: *u8, jobv: *u8, jobr: *u8, jobt: *u8, jobp: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, SVA: *float64, U: *float64, ldu: *s32, V: *float64, ldv: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

sgejsv_ :: (joba: *u8, jobu: *u8, jobv: *u8, jobr: *u8, jobt: *u8, jobp: *u8, m: *s32, n: *s32, A: *float, lda: *s32, SVA: *float, U: *float, ldu: *s32, V: *float, ldv: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

dgelq_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, T: *float64, tsize: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgelq_ :: (m: *s32, n: *s32, A: *float, lda: *s32, T: *float, tsize: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgelq2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sgelq2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dgelqf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgelqf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgels_ :: (trans: *u8, m: *s32, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgels_ :: (trans: *u8, m: *s32, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgelsd_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, S: *float64, rcond: *float64, rank: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32) -> void #foreign libopenblas;

sgelsd_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, S: *float, rcond: *float, rank: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32) -> void #foreign libopenblas;

dgelss_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, S: *float64, rcond: *float64, rank: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgelss_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, S: *float, rcond: *float, rank: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgelsy_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, JPVT: *s32, rcond: *float64, rank: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgelsy_ :: (m: *s32, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, JPVT: *s32, rcond: *float, rank: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgemlq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, T: *float64, tsize: *s32, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgemlq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, T: *float, tsize: *s32, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgemqr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, T: *float64, tsize: *s32, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgemqr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, T: *float, tsize: *s32, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgemqrt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, nb: *s32, V: *float64, ldv: *s32, T: *float64, ldt: *s32, C: *float64, ldc: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgemqrt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, nb: *s32, V: *float, ldv: *s32, T: *float, ldt: *s32, C: *float, ldc: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgeql2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sgeql2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dgeqlf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqlf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqpf_ :: (m: *s32, n: *s32, a: *float, lda: *s32, jpvt: *s32, tau: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dgeqpf_ :: (m: *s32, n: *s32, a: *float64, lda: *s32, jpvt: *s32, tau: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

dgeqp3_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, JPVT: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqp3_ :: (m: *s32, n: *s32, A: *float, lda: *s32, JPVT: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgeqr_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, T: *float64, tsize: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqr_ :: (m: *s32, n: *s32, A: *float, lda: *s32, T: *float, tsize: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgeqr2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sgeqr2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dgeqrf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqrf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgeqrfp_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgeqrfp_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgeqrt_ :: (m: *s32, n: *s32, nb: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, work: *float64, info: *s32) -> void #foreign libopenblas;

sgeqrt_ :: (m: *s32, n: *s32, nb: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, work: *float, info: *s32) -> void #foreign libopenblas;

dgeqrt2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, info: *s32) -> void #foreign libopenblas;

sgeqrt2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, info: *s32) -> void #foreign libopenblas;

dgeqrt3_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, info: *s32) -> void #foreign libopenblas;

sgeqrt3_ :: (m: *s32, n: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, info: *s32) -> void #foreign libopenblas;

dgerfs_ :: (trans: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgerfs_ :: (trans: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

// dgerfsx_ :: (trans: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

// sgerfsx_ :: (trans: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

dgerq2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sgerq2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dgerqf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgerqf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgesdd_ :: (jobz: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, S: *float64, U: *float64, ldu: *s32, VT: *float64, ldvt: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgesdd_ :: (jobz: *u8, m: *s32, n: *s32, A: *float, lda: *s32, S: *float, U: *float, ldu: *s32, VT: *float, ldvt: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgedmd_ :: (jobs: *u8, jobz: *u8, jobr: *u8, jobf: *u8, whtsvd: *s32, m: *s32, n: *s32, x: *float64, ldx: *s32, y: *float64, ldy: *s32, nrnk: *s32, tol: *float64, k: *s32, reig: *float64, imeig: *float64, z: *float64, ldz: *s32, res: *float64, b: *float64, ldb: *s32, w: *float64, ldw: *s32, s: *float64, lds: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

sgedmd_ :: (jobs: *u8, jobz: *u8, jobr: *u8, jobf: *u8, whtsvd: *s32, m: *s32, n: *s32, x: *float, ldx: *s32, y: *float, ldy: *s32, nrnk: *s32, tol: *float, k: *s32, reig: *float, imeig: *float, z: *float, ldz: *s32, res: *float, b: *float, ldb: *s32, w: *float, ldw: *s32, s: *float, lds: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dgedmdq_ :: (jobs: *u8, jobz: *u8, jobr: *u8, jobq: *u8, jobt: *u8, jobf: *u8, whtsvd: *s32, m: *s32, n: *s32, f: *float64, ldf: *s32, x: *float64, ldx: *s32, y: *float64, ldy: *s32, nrnk: *s32, tol: *float64, k: *s32, reig: *float64, imeig: *float64, z: *float64, ldz: *s32, res: *float64, b: *float64, ldb: *s32, v: *float64, ldv: *s32, s: *float64, lds: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

sgedmdq_ :: (jobs: *u8, jobz: *u8, jobr: *u8, jobq: *u8, jobt: *u8, jobf: *u8, whtsvd: *s32, m: *s32, n: *s32, f: *float, ldf: *s32, x: *float, ldx: *s32, y: *float, ldy: *s32, nrnk: *s32, tol: *float, k: *s32, reig: *float, imeig: *float, z: *float, ldz: *s32, res: *float, b: *float, ldb: *s32, v: *float, ldv: *s32, s: *float, lds: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

dgesv_ :: (n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32) -> s32 #foreign libopenblas;

sgesv_ :: (n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32) -> s32 #foreign libopenblas;

dsgesv_ :: (n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, work: *float64, swork: *float, iter: *s32, info: *s32) -> void #foreign libopenblas;

dgesvd_ :: (jobu: *u8, jobvt: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, S: *float64, U: *float64, ldu: *s32, VT: *float64, ldvt: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgesvd_ :: (jobu: *u8, jobvt: *u8, m: *s32, n: *s32, A: *float, lda: *s32, S: *float, U: *float, ldu: *s32, VT: *float, ldvt: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgesvdq_ :: (joba: *u8, jobp: *u8, jobr: *u8, jobu: *u8, jobv: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, S: *float64, U: *float64, ldu: *s32, V: *float64, ldv: *s32, numrank: *s32, iwork: *s32, liwork: *s32, work: *float64, lwork: *s32, rwork: *float64, lrwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

sgesvdq_ :: (joba: *u8, jobp: *u8, jobr: *u8, jobu: *u8, jobv: *u8, m: *s32, n: *s32, A: *float, lda: *s32, S: *float, U: *float, ldu: *s32, V: *float, ldv: *s32, numrank: *s32, iwork: *s32, liwork: *s32, work: *float, lwork: *s32, rwork: *float, lrwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

dgesvdx_ :: (jobu: *u8, jobvt: *u8, range: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, ns: *s32, S: *float64, U: *float64, ldu: *s32, VT: *float64, ldvt: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgesvdx_ :: (jobu: *u8, jobvt: *u8, range: *u8, m: *s32, n: *s32, A: *float, lda: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, ns: *s32, S: *float, U: *float, ldu: *s32, VT: *float, ldvt: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dgesvj_ :: (joba: *u8, jobu: *u8, jobv: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, SVA: *float64, mv: *s32, V: *float64, ldv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgesvj_ :: (joba: *u8, jobu: *u8, jobv: *u8, m: *s32, n: *s32, A: *float, lda: *s32, SVA: *float, mv: *s32, V: *float, ldv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dgesvx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, equed: *u8, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgesvx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, equed: *u8, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

// dgesvxx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, equed: *u8, R: *float64, C: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

// sgesvxx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, equed: *u8, R: *float, C: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

dgetf2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, ipiv: *s32, info: *s32) -> s32 #foreign libopenblas;

sgetf2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, ipiv: *s32, info: *s32) -> s32 #foreign libopenblas;

dgetrf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, ipiv: *s32, info: *s32) -> s32 #foreign libopenblas;

sgetrf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, ipiv: *s32, info: *s32) -> s32 #foreign libopenblas;

dgetrf2_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

sgetrf2_ :: (m: *s32, n: *s32, A: *float, lda: *s32, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

dgetri_ :: (n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgetri_ :: (n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgetrs_ :: (trans: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

sgetrs_ :: (trans: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

dgetsls_ :: (trans: *u8, m: *s32, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgetsls_ :: (trans: *u8, m: *s32, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgetsqrhrt_ :: (m: *s32, n: *s32, mb1: *s32, nb1: *s32, nb2: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgetsqrhrt_ :: (m: *s32, n: *s32, mb1: *s32, nb1: *s32, nb2: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dggbak_ :: (job: *u8, side: *u8, n: *s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, m: *s32, V: *float64, ldv: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sggbak_ :: (job: *u8, side: *u8, n: *s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, m: *s32, V: *float, ldv: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dggbal_ :: (job: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sggbal_ :: (job: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgges_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_D_SELECT3, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, VSL: *float64, ldvsl: *s32, VSR: *float64, ldvsr: *s32, work: *float64, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgges_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_S_SELECT3, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, VSL: *float, ldvsl: *s32, VSR: *float, ldvsr: *s32, work: *float, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dgges3_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_D_SELECT3, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, VSL: *float64, ldvsl: *s32, VSR: *float64, ldvsr: *s32, work: *float64, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sgges3_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_S_SELECT3, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, VSL: *float, ldvsl: *s32, VSR: *float, ldvsr: *s32, work: *float, lwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dggesx_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_D_SELECT3, sense: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, VSL: *float64, ldvsl: *s32, VSR: *float64, ldvsr: *s32, rconde: *float64, rcondv: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

sggesx_ :: (jobvsl: *u8, jobvsr: *u8, sort: *u8, selctg: LAPACK_S_SELECT3, sense: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, VSL: *float, ldvsl: *s32, VSR: *float, ldvsr: *s32, rconde: *float, rcondv: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dggev_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, alphar: *float64, alphai: *float64, beta: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sggev_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, alphar: *float, alphai: *float, beta: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dggev3_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, alphar: *float64, alphai: *float64, beta: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sggev3_ :: (jobvl: *u8, jobvr: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, alphar: *float, alphai: *float, beta: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dggevx_ :: (balanc: *u8, jobvl: *u8, jobvr: *u8, sense: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, alphar: *float64, alphai: *float64, beta: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, abnrm: *float64, bbnrm: *float64, rconde: *float64, rcondv: *float64, work: *float64, lwork: *s32, iwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

sggevx_ :: (balanc: *u8, jobvl: *u8, jobvr: *u8, sense: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, alphar: *float, alphai: *float, beta: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, abnrm: *float, bbnrm: *float, rconde: *float, rcondv: *float, work: *float, lwork: *s32, iwork: *s32, BWORK: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dggglm_ :: (n: *s32, m: *s32, p: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, D: *float64, X: *float64, Y: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sggglm_ :: (n: *s32, m: *s32, p: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, D: *float, X: *float, Y: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dgghd3_ :: (compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, Q: *float64, ldq: *s32, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgghd3_ :: (compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, Q: *float, ldq: *s32, Z: *float, ldz: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgghrd_ :: (compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, Q: *float64, ldq: *s32, Z: *float64, ldz: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgghrd_ :: (compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, Q: *float, ldq: *s32, Z: *float, ldz: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgglse_ :: (m: *s32, n: *s32, p: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, C: *float64, D: *float64, X: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sgglse_ :: (m: *s32, n: *s32, p: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, C: *float, D: *float, X: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dggqrf_ :: (n: *s32, m: *s32, p: *s32, A: *float64, lda: *s32, taua: *float64, B: *float64, ldb: *s32, taub: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sggqrf_ :: (n: *s32, m: *s32, p: *s32, A: *float, lda: *s32, taua: *float, B: *float, ldb: *s32, taub: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dggrqf_ :: (m: *s32, p: *s32, n: *s32, A: *float64, lda: *s32, taua: *float64, B: *float64, ldb: *s32, taub: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sggrqf_ :: (m: *s32, p: *s32, n: *s32, A: *float, lda: *s32, taua: *float, B: *float, ldb: *s32, taub: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sggsvd_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, n: *s32, p: *s32, k: *s32, l: *s32, a: *float, lda: *s32, b: *float, ldb: *s32, alpha: *float, beta: *float, u: *float, ldu: *s32, v: *float, ldv: *s32, q: *float, ldq: *s32, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dggsvd_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, n: *s32, p: *s32, k: *s32, l: *s32, a: *float64, lda: *s32, b: *float64, ldb: *s32, alpha: *float64, beta: *float64, u: *float64, ldu: *s32, v: *float64, ldv: *s32, q: *float64, ldq: *s32, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dggsvd3_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, n: *s32, p: *s32, k: *s32, l: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, alpha: *float64, beta: *float64, U: *float64, ldu: *s32, V: *float64, ldv: *s32, Q: *float64, ldq: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sggsvd3_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, n: *s32, p: *s32, k: *s32, l: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, alpha: *float, beta: *float, U: *float, ldu: *s32, V: *float, ldv: *s32, Q: *float, ldq: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sggsvp_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, a: *float, lda: *s32, b: *float, ldb: *s32, tola: *float, tolb: *float, k: *s32, l: *s32, u: *float, ldu: *s32, v: *float, ldv: *s32, q: *float, ldq: *s32, iwork: *s32, tau: *float, work: *float, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dggsvp_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, a: *float64, lda: *s32, b: *float64, ldb: *s32, tola: *float64, tolb: *float64, k: *s32, l: *s32, u: *float64, ldu: *s32, v: *float64, ldv: *s32, q: *float64, ldq: *s32, iwork: *s32, tau: *float64, work: *float64, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dggsvp3_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, tola: *float64, tolb: *float64, k: *s32, l: *s32, U: *float64, ldu: *s32, V: *float64, ldv: *s32, Q: *float64, ldq: *s32, iwork: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sggsvp3_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, tola: *float, tolb: *float, k: *s32, l: *s32, U: *float, ldu: *s32, V: *float, ldv: *s32, Q: *float, ldq: *s32, iwork: *s32, tau: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dgtcon_ :: (norm: *u8, n: *s32, DL: *float64, D: *float64, DU: *float64, DU2: *float64, ipiv: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgtcon_ :: (norm: *u8, n: *s32, DL: *float, D: *float, DU: *float, DU2: *float, ipiv: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgtrfs_ :: (trans: *u8, n: *s32, nrhs: *s32, DL: *float64, D: *float64, DU: *float64, DLF: *float64, DF: *float64, DUF: *float64, DU2: *float64, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgtrfs_ :: (trans: *u8, n: *s32, nrhs: *s32, DL: *float, D: *float, DU: *float, DLF: *float, DF: *float, DUF: *float, DU2: *float, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dgtsv_ :: (n: *s32, nrhs: *s32, DL: *float64, D: *float64, DU: *float64, B: *float64, ldb: *s32, info: *s32) -> void #foreign libopenblas;

sgtsv_ :: (n: *s32, nrhs: *s32, DL: *float, D: *float, DU: *float, B: *float, ldb: *s32, info: *s32) -> void #foreign libopenblas;

dgtsvx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, DL: *float64, D: *float64, DU: *float64, DLF: *float64, DF: *float64, DUF: *float64, DU2: *float64, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sgtsvx_ :: (fact: *u8, trans: *u8, n: *s32, nrhs: *s32, DL: *float, D: *float, DU: *float, DLF: *float, DF: *float, DUF: *float, DU2: *float, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dgttrf_ :: (n: *s32, DL: *float64, D: *float64, DU: *float64, DU2: *float64, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

sgttrf_ :: (n: *s32, DL: *float, D: *float, DU: *float, DU2: *float, ipiv: *s32, info: *s32) -> void #foreign libopenblas;

dgttrs_ :: (trans: *u8, n: *s32, nrhs: *s32, DL: *float64, D: *float64, DU: *float64, DU2: *float64, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sgttrs_ :: (trans: *u8, n: *s32, nrhs: *s32, DL: *float, D: *float, DU: *float, DU2: *float, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dhgeqz_ :: (job: *u8, compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, H: *float64, ldh: *s32, T: *float64, ldt: *s32, alphar: *float64, alphai: *float64, beta: *float64, Q: *float64, ldq: *s32, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

shgeqz_ :: (job: *u8, compq: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, H: *float, ldh: *s32, T: *float, ldt: *s32, alphar: *float, alphai: *float, beta: *float, Q: *float, ldq: *s32, Z: *float, ldz: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dhsein_ :: (side: *u8, eigsrc: *u8, initv: *u8, select: *s32, n: *s32, H: *float64, ldh: *s32, WR: *float64, WI: *float64, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, mm: *s32, m: *s32, work: *float64, IFAILL: *s32, IFAILR: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

shsein_ :: (side: *u8, eigsrc: *u8, initv: *u8, select: *s32, n: *s32, H: *float, ldh: *s32, WR: *float, WI: *float, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, mm: *s32, m: *s32, work: *float, IFAILL: *s32, IFAILR: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dhseqr_ :: (job: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, H: *float64, ldh: *s32, WR: *float64, WI: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

shseqr_ :: (job: *u8, compz: *u8, n: *s32, ilo: *s32, ihi: *s32, H: *float, ldh: *s32, WR: *float, WI: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dlacn2_ :: (n: *s32, V: *float64, X: *float64, ISGN: *s32, est: *float64, kase: *s32, ISAVE: *s32) -> void #foreign libopenblas;

slacn2_ :: (n: *s32, V: *float, X: *float, ISGN: *s32, est: *float, kase: *s32, ISAVE: *s32) -> void #foreign libopenblas;

dlacpy_ :: (uplo: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, unknown0: u64) -> void #foreign libopenblas;

slacpy_ :: (uplo: *u8, m: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, unknown0: u64) -> void #foreign libopenblas;

slag2d_ :: (m: *s32, n: *s32, SA: *float, ldsa: *s32, A: *float64, lda: *s32, info: *s32) -> void #foreign libopenblas;

dlag2s_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, SA: *float, ldsa: *s32, info: *s32) -> void #foreign libopenblas;

dlagge_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, D: *float64, A: *float64, lda: *s32, iseed: *s32, work: *float64, info: *s32) -> void #foreign libopenblas;

slagge_ :: (m: *s32, n: *s32, kl: *s32, ku: *s32, D: *float, A: *float, lda: *s32, iseed: *s32, work: *float, info: *s32) -> void #foreign libopenblas;

dlagsy_ :: (n: *s32, k: *s32, D: *float64, A: *float64, lda: *s32, iseed: *s32, work: *float64, info: *s32) -> void #foreign libopenblas;

slagsy_ :: (n: *s32, k: *s32, D: *float, A: *float, lda: *s32, iseed: *s32, work: *float, info: *s32) -> void #foreign libopenblas;

dlamch_ :: (cmach: *u8, unknown0: u64) -> float64 #foreign libopenblas;

slamch_ :: (cmach: *u8, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlangb_ :: (norm: *u8, n: *s32, kl: *s32, ku: *s32, AB: *float64, ldab: *s32, work: *float64, unknown0: u64) -> float64 #foreign libopenblas;

slangb_ :: (norm: *u8, n: *s32, kl: *s32, ku: *s32, AB: *float, ldab: *s32, work: *float, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlange_ :: (norm: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, work: *float64, unknown0: u64) -> float64 #foreign libopenblas;

slange_ :: (norm: *u8, m: *s32, n: *s32, A: *float, lda: *s32, work: *float, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlangt_ :: (norm: *u8, n: *s32, DL: *float64, D: *float64, DU: *float64, unknown0: u64) -> float64 #foreign libopenblas;

slangt_ :: (norm: *u8, n: *s32, DL: *float, D: *float, DU: *float, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlanhs_ :: (norm: *u8, n: *s32, A: *float64, lda: *s32, work: *float64, unknown0: u64) -> float64 #foreign libopenblas;

slanhs_ :: (norm: *u8, n: *s32, A: *float, lda: *s32, work: *float, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlansb_ :: (norm: *u8, uplo: *u8, n: *s32, k: *s32, AB: *float64, ldab: *s32, work: *float64, unknown0: u64, unknown1: u64) -> float64 #foreign libopenblas;

slansb_ :: (norm: *u8, uplo: *u8, n: *s32, k: *s32, AB: *float, ldab: *s32, work: *float, unknown0: u64, unknown1: u64) -> lapack_float_return #foreign libopenblas;

dlansp_ :: (norm: *u8, uplo: *u8, n: *s32, AP: *float64, work: *float64, unknown0: u64, unknown1: u64) -> float64 #foreign libopenblas;

slansp_ :: (norm: *u8, uplo: *u8, n: *s32, AP: *float, work: *float, unknown0: u64, unknown1: u64) -> lapack_float_return #foreign libopenblas;

dlanst_ :: (norm: *u8, n: *s32, D: *float64, E: *float64, unknown0: u64) -> float64 #foreign libopenblas;

slanst_ :: (norm: *u8, n: *s32, D: *float, E: *float, unknown0: u64) -> lapack_float_return #foreign libopenblas;

dlansy_ :: (norm: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, work: *float64, unknown0: u64, unknown1: u64) -> float64 #foreign libopenblas;

slansy_ :: (norm: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, work: *float, unknown0: u64, unknown1: u64) -> lapack_float_return #foreign libopenblas;

dlantb_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, k: *s32, AB: *float64, ldab: *s32, work: *float64, unknown0: u64, unknown1: u64, unknown2: u64) -> float64 #foreign libopenblas;

slantb_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, k: *s32, AB: *float, ldab: *s32, work: *float, unknown0: u64, unknown1: u64, unknown2: u64) -> lapack_float_return #foreign libopenblas;

dlantp_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, AP: *float64, work: *float64, unknown0: u64, unknown1: u64, unknown2: u64) -> float64 #foreign libopenblas;

slantp_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, AP: *float, work: *float, unknown0: u64, unknown1: u64, unknown2: u64) -> lapack_float_return #foreign libopenblas;

dlantr_ :: (norm: *u8, uplo: *u8, diag: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, work: *float64, unknown0: u64, unknown1: u64, unknown2: u64) -> float64 #foreign libopenblas;

slantr_ :: (norm: *u8, uplo: *u8, diag: *u8, m: *s32, n: *s32, A: *float, lda: *s32, work: *float, unknown0: u64, unknown1: u64, unknown2: u64) -> lapack_float_return #foreign libopenblas;

dlapmr_ :: (forwrd: *s32, m: *s32, n: *s32, X: *float64, ldx: *s32, K: *s32) -> void #foreign libopenblas;

slapmr_ :: (forwrd: *s32, m: *s32, n: *s32, X: *float, ldx: *s32, K: *s32) -> void #foreign libopenblas;

dlapmt_ :: (forwrd: *s32, m: *s32, n: *s32, X: *float64, ldx: *s32, K: *s32) -> void #foreign libopenblas;

slapmt_ :: (forwrd: *s32, m: *s32, n: *s32, X: *float, ldx: *s32, K: *s32) -> void #foreign libopenblas;

dlapy2_ :: (x: *float64, y: *float64) -> float64 #foreign libopenblas;

slapy2_ :: (x: *float, y: *float) -> lapack_float_return #foreign libopenblas;

dlapy3_ :: (x: *float64, y: *float64, z: *float64) -> float64 #foreign libopenblas;

slapy3_ :: (x: *float, y: *float, z: *float) -> lapack_float_return #foreign libopenblas;

dlarf_ :: (side: *u8, m: *s32, n: *s32, V: *float64, incv: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, unknown0: u64) -> void #foreign libopenblas;

slarf_ :: (side: *u8, m: *s32, n: *s32, V: *float, incv: *s32, tau: *float, C: *float, ldc: *s32, work: *float, unknown0: u64) -> void #foreign libopenblas;

dlarfb_ :: (side: *u8, trans: *u8, direct: *u8, storev: *u8, m: *s32, n: *s32, k: *s32, V: *float64, ldv: *s32, T: *float64, ldt: *s32, C: *float64, ldc: *s32, work: *float64, ldwork: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

slarfb_ :: (side: *u8, trans: *u8, direct: *u8, storev: *u8, m: *s32, n: *s32, k: *s32, V: *float, ldv: *s32, T: *float, ldt: *s32, C: *float, ldc: *s32, work: *float, ldwork: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dlarfg_ :: (n: *s32, alpha: *float64, X: *float64, incx: *s32, tau: *float64) -> void #foreign libopenblas;

slarfg_ :: (n: *s32, alpha: *float, X: *float, incx: *s32, tau: *float) -> void #foreign libopenblas;

dlarft_ :: (direct: *u8, storev: *u8, n: *s32, k: *s32, V: *float64, ldv: *s32, tau: *float64, T: *float64, ldt: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

slarft_ :: (direct: *u8, storev: *u8, n: *s32, k: *s32, V: *float, ldv: *s32, tau: *float, T: *float, ldt: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dlarfx_ :: (side: *u8, m: *s32, n: *s32, V: *float64, tau: *float64, C: *float64, ldc: *s32, work: *float64, unknown0: u64) -> void #foreign libopenblas;

slarfx_ :: (side: *u8, m: *s32, n: *s32, V: *float, tau: *float, C: *float, ldc: *s32, work: *float, unknown0: u64) -> void #foreign libopenblas;

dlarnv_ :: (idist: *s32, iseed: *s32, n: *s32, X: *float64) -> void #foreign libopenblas;

slarnv_ :: (idist: *s32, iseed: *s32, n: *s32, X: *float) -> void #foreign libopenblas;

dlartgp_ :: (f: *float64, g: *float64, cs: *float64, sn: *float64, r: *float64) -> void #foreign libopenblas;

slartgp_ :: (f: *float, g: *float, cs: *float, sn: *float, r: *float) -> void #foreign libopenblas;

dlartgs_ :: (x: *float64, y: *float64, sigma: *float64, cs: *float64, sn: *float64) -> void #foreign libopenblas;

slartgs_ :: (x: *float, y: *float, sigma: *float, cs: *float, sn: *float) -> void #foreign libopenblas;

dlascl_ :: (type: *u8, kl: *s32, ku: *s32, cfrom: *float64, cto: *float64, m: *s32, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

slascl_ :: (type: *u8, kl: *s32, ku: *s32, cfrom: *float, cto: *float, m: *s32, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dlaset_ :: (uplo: *u8, m: *s32, n: *s32, alpha: *float64, beta: *float64, A: *float64, lda: *s32, unknown0: u64) -> void #foreign libopenblas;

slaset_ :: (uplo: *u8, m: *s32, n: *s32, alpha: *float, beta: *float, A: *float, lda: *s32, unknown0: u64) -> void #foreign libopenblas;

dlasrt_ :: (id: *u8, n: *s32, D: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

slasrt_ :: (id: *u8, n: *s32, D: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dlassq_ :: (n: *s32, X: *float64, incx: *s32, scale: *float64, sumsq: *float64) -> void #foreign libopenblas;

slassq_ :: (n: *s32, X: *float, incx: *s32, scale: *float, sumsq: *float) -> void #foreign libopenblas;

dlaswp_ :: (n: *s32, A: *float64, lda: *s32, k1: *s32, k2: *s32, ipiv: *s32, incx: *s32) -> s32 #foreign libopenblas;

slaswp_ :: (n: *s32, A: *float, lda: *s32, k1: *s32, k2: *s32, ipiv: *s32, incx: *s32) -> s32 #foreign libopenblas;

dlatms_ :: (m: *s32, n: *s32, dist: *u8, iseed: *s32, sym: *u8, D: *float64, mode: *s32, cond: *float64, dmax: *float64, kl: *s32, ku: *s32, pack: *u8, A: *float64, lda: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

slatms_ :: (m: *s32, n: *s32, dist: *u8, iseed: *s32, sym: *u8, D: *float, mode: *s32, cond: *float, dmax: *float, kl: *s32, ku: *s32, pack: *u8, A: *float, lda: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dlauum_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

slauum_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

ilaver_ :: (vers_major: *s32, vers_minor: *s32, vers_patch: *s32) -> s32 #foreign libopenblas;

dopgtr_ :: (uplo: *u8, n: *s32, AP: *float64, tau: *float64, Q: *float64, ldq: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sopgtr_ :: (uplo: *u8, n: *s32, AP: *float, tau: *float, Q: *float, ldq: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dopmtr_ :: (side: *u8, uplo: *u8, trans: *u8, m: *s32, n: *s32, AP: *float64, tau: *float64, C: *float64, ldc: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sopmtr_ :: (side: *u8, uplo: *u8, trans: *u8, m: *s32, n: *s32, AP: *float, tau: *float, C: *float, ldc: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dorbdb_ :: (trans: *u8, signs: *u8, m: *s32, p: *s32, q: *s32, X11: *float64, ldx11: *s32, X12: *float64, ldx12: *s32, X21: *float64, ldx21: *s32, X22: *float64, ldx22: *s32, theta: *float64, phi: *float64, TAUP1: *float64, TAUP2: *float64, TAUQ1: *float64, TAUQ2: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sorbdb_ :: (trans: *u8, signs: *u8, m: *s32, p: *s32, q: *s32, X11: *float, ldx11: *s32, X12: *float, ldx12: *s32, X21: *float, ldx21: *s32, X22: *float, ldx22: *s32, theta: *float, phi: *float, TAUP1: *float, TAUP2: *float, TAUQ1: *float, TAUQ2: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dorcsd_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, jobv2t: *u8, trans: *u8, signs: *u8, m: *s32, p: *s32, q: *s32, X11: *float64, ldx11: *s32, X12: *float64, ldx12: *s32, X21: *float64, ldx21: *s32, X22: *float64, ldx22: *s32, theta: *float64, U1: *float64, ldu1: *s32, U2: *float64, ldu2: *s32, V1T: *float64, ldv1t: *s32, V2T: *float64, ldv2t: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

sorcsd_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, jobv2t: *u8, trans: *u8, signs: *u8, m: *s32, p: *s32, q: *s32, X11: *float, ldx11: *s32, X12: *float, ldx12: *s32, X21: *float, ldx21: *s32, X22: *float, ldx22: *s32, theta: *float, U1: *float, ldu1: *s32, U2: *float, ldu2: *s32, V1T: *float, ldv1t: *s32, V2T: *float, ldv2t: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64, unknown5: u64) -> void #foreign libopenblas;

dorcsd2by1_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, m: *s32, p: *s32, q: *s32, X11: *float64, ldx11: *s32, X21: *float64, ldx21: *s32, theta: *float64, U1: *float64, ldu1: *s32, U2: *float64, ldu2: *s32, V1T: *float64, ldv1t: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sorcsd2by1_ :: (jobu1: *u8, jobu2: *u8, jobv1t: *u8, m: *s32, p: *s32, q: *s32, X11: *float, ldx11: *s32, X21: *float, ldx21: *s32, theta: *float, U1: *float, ldu1: *s32, U2: *float, ldu2: *s32, V1T: *float, ldv1t: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dorgbr_ :: (vect: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sorgbr_ :: (vect: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dorghr_ :: (n: *s32, ilo: *s32, ihi: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorghr_ :: (n: *s32, ilo: *s32, ihi: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorglq_ :: (m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorglq_ :: (m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorgql_ :: (m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorgql_ :: (m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorgqr_ :: (m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorgqr_ :: (m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorgrq_ :: (m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorgrq_ :: (m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorgtr_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sorgtr_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dorgtsqr_row_ :: (m: *s32, n: *s32, mb: *s32, nb: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

sorgtsqr_row_ :: (m: *s32, n: *s32, mb: *s32, nb: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dorhr_col_ :: (m: *s32, n: *s32, nb: *s32, A: *float64, lda: *s32, T: *float64, ldt: *s32, D: *float64, info: *s32) -> void #foreign libopenblas;

sorhr_col_ :: (m: *s32, n: *s32, nb: *s32, A: *float, lda: *s32, T: *float, ldt: *s32, D: *float, info: *s32) -> void #foreign libopenblas;

dormbr_ :: (vect: *u8, side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sormbr_ :: (vect: *u8, side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dormhr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, ilo: *s32, ihi: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormhr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, ilo: *s32, ihi: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormlq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormlq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormql_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormql_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormqr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormqr_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormrq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormrq_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormrz_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sormrz_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dormtr_ :: (side: *u8, uplo: *u8, trans: *u8, m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, C: *float64, ldc: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sormtr_ :: (side: *u8, uplo: *u8, trans: *u8, m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, C: *float, ldc: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dpbcon_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbcon_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbequ_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, S: *float64, scond: *float64, amax: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbequ_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, S: *float, scond: *float, amax: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbrfs_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbrfs_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbstf_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbstf_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbsv_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbsv_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbsvx_ :: (fact: *u8, uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, AFB: *float64, ldafb: *s32, equed: *u8, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

spbsvx_ :: (fact: *u8, uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, AFB: *float, ldafb: *s32, equed: *u8, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dpbtrf_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbtrf_ :: (uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpbtrs_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spbtrs_ :: (uplo: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpftrf_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

spftrf_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dpftri_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

spftri_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dpftrs_ :: (transr: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float64, B: *float64, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

spftrs_ :: (transr: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float, B: *float, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dpocon_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spocon_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpoequ_ :: (n: *s32, A: *float64, lda: *s32, S: *float64, scond: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

spoequ_ :: (n: *s32, A: *float, lda: *s32, S: *float, scond: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dpoequb_ :: (n: *s32, A: *float64, lda: *s32, S: *float64, scond: *float64, amax: *float64, info: *s32) -> void #foreign libopenblas;

spoequb_ :: (n: *s32, A: *float, lda: *s32, S: *float, scond: *float, amax: *float, info: *s32) -> void #foreign libopenblas;

dporfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sporfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

// dporfsx_ :: (uplo: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

// sporfsx_ :: (uplo: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

dposv_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sposv_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsposv_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, work: *float64, swork: *float, iter: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dposvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, equed: *u8, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sposvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, equed: *u8, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

// dposvxx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, equed: *u8, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

// sposvxx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, equed: *u8, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

dpotf2_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spotf2_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpotrf_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

spotrf_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> s32 #foreign libopenblas;

dpotrf2_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spotrf2_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpotri_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spotri_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpotrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spotrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dppcon_ :: (uplo: *u8, n: *s32, AP: *float64, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sppcon_ :: (uplo: *u8, n: *s32, AP: *float, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dppequ_ :: (uplo: *u8, n: *s32, AP: *float64, S: *float64, scond: *float64, amax: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sppequ_ :: (uplo: *u8, n: *s32, AP: *float, S: *float, scond: *float, amax: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpprfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, AFP: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spprfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, AFP: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dppsv_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sppsv_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dppsvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, AFP: *float64, equed: *u8, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sppsvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, AP: *float, AFP: *float, equed: *u8, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dpptrf_ :: (uplo: *u8, n: *s32, AP: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spptrf_ :: (uplo: *u8, n: *s32, AP: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpptri_ :: (uplo: *u8, n: *s32, AP: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spptri_ :: (uplo: *u8, n: *s32, AP: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpptrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spptrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpstrf_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, piv: *s32, rank: *s32, tol: *float64, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spstrf_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, piv: *s32, rank: *s32, tol: *float, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dptcon_ :: (n: *s32, D: *float64, E: *float64, anorm: *float64, rcond: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sptcon_ :: (n: *s32, D: *float, E: *float, anorm: *float, rcond: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dpteqr_ :: (compz: *u8, n: *s32, D: *float64, E: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

spteqr_ :: (compz: *u8, n: *s32, D: *float, E: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dptrfs_ :: (n: *s32, nrhs: *s32, D: *float64, E: *float64, DF: *float64, EF: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, info: *s32) -> void #foreign libopenblas;

sptrfs_ :: (n: *s32, nrhs: *s32, D: *float, E: *float, DF: *float, EF: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, info: *s32) -> void #foreign libopenblas;

dptsv_ :: (n: *s32, nrhs: *s32, D: *float64, E: *float64, B: *float64, ldb: *s32, info: *s32) -> void #foreign libopenblas;

sptsv_ :: (n: *s32, nrhs: *s32, D: *float, E: *float, B: *float, ldb: *s32, info: *s32) -> void #foreign libopenblas;

dptsvx_ :: (fact: *u8, n: *s32, nrhs: *s32, D: *float64, E: *float64, DF: *float64, EF: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sptsvx_ :: (fact: *u8, n: *s32, nrhs: *s32, D: *float, E: *float, DF: *float, EF: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dpttrf_ :: (n: *s32, D: *float64, E: *float64, info: *s32) -> void #foreign libopenblas;

spttrf_ :: (n: *s32, D: *float, E: *float, info: *s32) -> void #foreign libopenblas;

dpttrs_ :: (n: *s32, nrhs: *s32, D: *float64, E: *float64, B: *float64, ldb: *s32, info: *s32) -> void #foreign libopenblas;

spttrs_ :: (n: *s32, nrhs: *s32, D: *float, E: *float, B: *float, ldb: *s32, info: *s32) -> void #foreign libopenblas;

dsbev_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbev_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, W: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbev_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbev_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbevd_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbevd_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbevd_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbevd_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, Q: *float64, ldq: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssbevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, Q: *float, ldq: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsbevx_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, Q: *float64, ldq: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssbevx_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, Q: *float, ldq: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsbgst_ :: (vect: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float64, ldab: *s32, BB: *float64, ldbb: *s32, X: *float64, ldx: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbgst_ :: (vect: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float, ldab: *s32, BB: *float, ldbb: *s32, X: *float, ldx: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbgv_ :: (jobz: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float64, ldab: *s32, BB: *float64, ldbb: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbgv_ :: (jobz: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float, ldab: *s32, BB: *float, ldbb: *s32, W: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbgvd_ :: (jobz: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float64, ldab: *s32, BB: *float64, ldbb: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbgvd_ :: (jobz: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float, ldab: *s32, BB: *float, ldbb: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsbgvx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float64, ldab: *s32, BB: *float64, ldbb: *s32, Q: *float64, ldq: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssbgvx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, ka: *s32, kb: *s32, AB: *float, ldab: *s32, BB: *float, ldbb: *s32, Q: *float, ldq: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsbtrd_ :: (vect: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, D: *float64, E: *float64, Q: *float64, ldq: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssbtrd_ :: (vect: *u8, uplo: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, D: *float, E: *float, Q: *float, ldq: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsfrk_ :: (transr: *u8, uplo: *u8, trans: *u8, n: *s32, k: *s32, alpha: *float64, A: *float64, lda: *s32, beta: *float64, C: *float64, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssfrk_ :: (transr: *u8, uplo: *u8, trans: *u8, n: *s32, k: *s32, alpha: *float, A: *float, lda: *s32, beta: *float, C: *float, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dspcon_ :: (uplo: *u8, n: *s32, AP: *float64, ipiv: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sspcon_ :: (uplo: *u8, n: *s32, AP: *float, ipiv: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dspev_ :: (jobz: *u8, uplo: *u8, n: *s32, AP: *float64, W: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sspev_ :: (jobz: *u8, uplo: *u8, n: *s32, AP: *float, W: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dspevd_ :: (jobz: *u8, uplo: *u8, n: *s32, AP: *float64, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sspevd_ :: (jobz: *u8, uplo: *u8, n: *s32, AP: *float, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dspevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, AP: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sspevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, AP: *float, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dspgst_ :: (itype: *s32, uplo: *u8, n: *s32, AP: *float64, BP: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sspgst_ :: (itype: *s32, uplo: *u8, n: *s32, AP: *float, BP: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dspgv_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, AP: *float64, BP: *float64, W: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sspgv_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, AP: *float, BP: *float, W: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dspgvd_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, AP: *float64, BP: *float64, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sspgvd_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, AP: *float, BP: *float, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dspgvx_ :: (itype: *s32, jobz: *u8, range: *u8, uplo: *u8, n: *s32, AP: *float64, BP: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

sspgvx_ :: (itype: *s32, jobz: *u8, range: *u8, uplo: *u8, n: *s32, AP: *float, BP: *float, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsprfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, AFP: *float64, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssprfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, AFP: *float, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dspsv_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sspsv_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dspsvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, AFP: *float64, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sspsvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, AP: *float, AFP: *float, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsptrd_ :: (uplo: *u8, n: *s32, AP: *float64, D: *float64, E: *float64, tau: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssptrd_ :: (uplo: *u8, n: *s32, AP: *float, D: *float, E: *float, tau: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsptrf_ :: (uplo: *u8, n: *s32, AP: *float64, ipiv: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssptrf_ :: (uplo: *u8, n: *s32, AP: *float, ipiv: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsptri_ :: (uplo: *u8, n: *s32, AP: *float64, ipiv: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssptri_ :: (uplo: *u8, n: *s32, AP: *float, ipiv: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsptrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float64, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssptrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, AP: *float, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dstebz_ :: (range: *u8, order: *u8, n: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, D: *float64, E: *float64, m: *s32, nsplit: *s32, W: *float64, IBLOCK: *s32, ISPLIT: *s32, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sstebz_ :: (range: *u8, order: *u8, n: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, D: *float, E: *float, m: *s32, nsplit: *s32, W: *float, IBLOCK: *s32, ISPLIT: *s32, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dstedc_ :: (compz: *u8, n: *s32, D: *float64, E: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sstedc_ :: (compz: *u8, n: *s32, D: *float, E: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dstegr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float64, E: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, ISUPPZ: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sstegr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float, E: *float, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, ISUPPZ: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dstein_ :: (n: *s32, D: *float64, E: *float64, m: *s32, W: *float64, IBLOCK: *s32, ISPLIT: *s32, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32) -> void #foreign libopenblas;

sstein_ :: (n: *s32, D: *float, E: *float, m: *s32, W: *float, IBLOCK: *s32, ISPLIT: *s32, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32) -> void #foreign libopenblas;

dstemr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float64, E: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, m: *s32, W: *float64, Z: *float64, ldz: *s32, nzc: *s32, ISUPPZ: *s32, tryrac: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sstemr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float, E: *float, vl: *float, vu: *float, il: *s32, iu: *s32, m: *s32, W: *float, Z: *float, ldz: *s32, nzc: *s32, ISUPPZ: *s32, tryrac: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsteqr_ :: (compz: *u8, n: *s32, D: *float64, E: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssteqr_ :: (compz: *u8, n: *s32, D: *float, E: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsterf_ :: (n: *s32, D: *float64, E: *float64, info: *s32) -> void #foreign libopenblas;

ssterf_ :: (n: *s32, D: *float, E: *float, info: *s32) -> void #foreign libopenblas;

dstev_ :: (jobz: *u8, n: *s32, D: *float64, E: *float64, Z: *float64, ldz: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sstev_ :: (jobz: *u8, n: *s32, D: *float, E: *float, Z: *float, ldz: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dstevd_ :: (jobz: *u8, n: *s32, D: *float64, E: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

sstevd_ :: (jobz: *u8, n: *s32, D: *float, E: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dstevr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float64, E: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, ISUPPZ: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sstevr_ :: (jobz: *u8, range: *u8, n: *s32, D: *float, E: *float, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, ISUPPZ: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dstevx_ :: (jobz: *u8, range: *u8, n: *s32, D: *float64, E: *float64, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

sstevx_ :: (jobz: *u8, range: *u8, n: *s32, D: *float, E: *float, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsycon_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssycon_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsycon_3_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, E: *float64, ipiv: *s32, anorm: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssycon_3_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, E: *float, ipiv: *s32, anorm: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsyconv_ :: (uplo: *u8, way: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, E: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssyconv_ :: (uplo: *u8, way: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, E: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsyequb_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, S: *float64, scond: *float64, amax: *float64, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssyequb_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, S: *float, scond: *float, amax: *float, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsyev_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, W: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssyev_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, W: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsyev_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, W: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssyev_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, W: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsyevd_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, W: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssyevd_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, W: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsyevd_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, W: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssyevd_2stage_ :: (jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, W: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsyevr_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, ISUPPZ: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssyevr_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, ISUPPZ: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsyevr_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, ISUPPZ: *s32, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssyevr_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, ISUPPZ: *s32, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsyevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssyevx_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsyevx_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssyevx_2stage_ :: (jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsygst_ :: (itype: *s32, uplo: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssygst_ :: (itype: *s32, uplo: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsygv_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, W: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssygv_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, W: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsygv_2stage_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, W: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssygv_2stage_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, W: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsygvd_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, W: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssygvd_ :: (itype: *s32, jobz: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, W: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsygvx_ :: (itype: *s32, jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, vl: *float64, vu: *float64, il: *s32, iu: *s32, abstol: *float64, m: *s32, W: *float64, Z: *float64, ldz: *s32, work: *float64, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

ssygvx_ :: (itype: *s32, jobz: *u8, range: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, vl: *float, vu: *float, il: *s32, iu: *s32, abstol: *float, m: *s32, W: *float, Z: *float, ldz: *s32, work: *float, lwork: *s32, iwork: *s32, IFAIL: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dsyrfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssyrfs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

// dsyrfsx_ :: (uplo: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

// ssyrfsx_ :: (uplo: *u8, equed: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

dsysv_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssysv_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsysv_aa_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssysv_aa_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsysv_aa_2stage_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, TB: *float64, ltb: *s32, ipiv: *s32, ipiv2: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssysv_aa_2stage_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, TB: *float, ltb: *s32, ipiv: *s32, ipiv2: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsysv_rk_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, E: *float64, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssysv_rk_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, E: *float, ipiv: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsysv_rook_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssysv_rook_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsysvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssysvx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, ferr: *float, berr: *float, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

// dsysvxx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, AF: *float64, ldaf: *s32, ipiv: *s32, equed: *u8, S: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: *s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: *s32, params: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

// ssysvxx_ :: (fact: *u8, uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, AF: *float, ldaf: *s32, ipiv: *s32, equed: *u8, S: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: *s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: *s32, params: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign __UnknownLib;

dsyswapr_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, i1: *s32, i2: *s32, unknown0: u64) -> void #foreign libopenblas;

ssyswapr_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, i1: *s32, i2: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrd_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, D: *float64, E: *float64, tau: *float64, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrd_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, D: *float, E: *float, tau: *float, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrd_2stage_ :: (vect: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, D: *float64, E: *float64, tau: *float64, HOUS2: *float64, lhous2: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

ssytrd_2stage_ :: (vect: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, D: *float, E: *float, tau: *float, HOUS2: *float, lhous2: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dsytrf_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrf_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrf_aa_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrf_aa_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrf_aa_2stage_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, TB: *float64, ltb: *s32, ipiv: *s32, ipiv2: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrf_aa_2stage_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, TB: *float, ltb: *s32, ipiv: *s32, ipiv2: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrf_rk_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, E: *float64, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrf_rk_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, E: *float, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrf_rook_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrf_rook_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytri_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytri_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytri2_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytri2_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytri2x_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, ipiv: *s32, work: *float64, nb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytri2x_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, ipiv: *s32, work: *float, nb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytri_3_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, E: *float64, ipiv: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytri_3_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, E: *float, ipiv: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs2_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs2_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs_3_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, E: *float64, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs_3_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, E: *float, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs_aa_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs_aa_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs_aa_2stage_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, TB: *float64, ltb: *s32, ipiv: *s32, ipiv2: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs_aa_2stage_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, TB: *float, ltb: *s32, ipiv: *s32, ipiv2: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dsytrs_rook_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, ipiv: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

ssytrs_rook_ :: (uplo: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, ipiv: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dtbcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, kd: *s32, AB: *float64, ldab: *s32, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stbcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, kd: *s32, AB: *float, ldab: *s32, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtbrfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stbrfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtbtrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float64, ldab: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stbtrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, kd: *s32, nrhs: *s32, AB: *float, ldab: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtfsm_ :: (transr: *u8, side: *u8, uplo: *u8, trans: *u8, diag: *u8, m: *s32, n: *s32, alpha: *float64, A: *float64, B: *float64, ldb: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

stfsm_ :: (transr: *u8, side: *u8, uplo: *u8, trans: *u8, diag: *u8, m: *s32, n: *s32, alpha: *float, A: *float, B: *float, ldb: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64, unknown4: u64) -> void #foreign libopenblas;

dtftri_ :: (transr: *u8, uplo: *u8, diag: *u8, n: *s32, A: *float64, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stftri_ :: (transr: *u8, uplo: *u8, diag: *u8, n: *s32, A: *float, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtfttp_ :: (transr: *u8, uplo: *u8, n: *s32, ARF: *float64, AP: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stfttp_ :: (transr: *u8, uplo: *u8, n: *s32, ARF: *float, AP: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtfttr_ :: (transr: *u8, uplo: *u8, n: *s32, ARF: *float64, A: *float64, lda: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stfttr_ :: (transr: *u8, uplo: *u8, n: *s32, ARF: *float, A: *float, lda: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtgevc_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, S: *float64, lds: *s32, P: *float64, ldp: *s32, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, mm: *s32, m: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stgevc_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, S: *float, lds: *s32, P: *float, ldp: *s32, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, mm: *s32, m: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtgexc_ :: (wantq: *s32, wantz: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, Q: *float64, ldq: *s32, Z: *float64, ldz: *s32, ifst: *s32, ilst: *s32, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

stgexc_ :: (wantq: *s32, wantz: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, Q: *float, ldq: *s32, Z: *float, ldz: *s32, ifst: *s32, ilst: *s32, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

dtgsen_ :: (ijob: *s32, wantq: *s32, wantz: *s32, select: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, alphar: *float64, alphai: *float64, beta: *float64, Q: *float64, ldq: *s32, Z: *float64, ldz: *s32, m: *s32, pl: *float64, pr: *float64, DIF: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32) -> void #foreign libopenblas;

stgsen_ :: (ijob: *s32, wantq: *s32, wantz: *s32, select: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, alphar: *float, alphai: *float, beta: *float, Q: *float, ldq: *s32, Z: *float, ldz: *s32, m: *s32, pl: *float, pr: *float, DIF: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32) -> void #foreign libopenblas;

dtgsja_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, k: *s32, l: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, tola: *float64, tolb: *float64, alpha: *float64, beta: *float64, U: *float64, ldu: *s32, V: *float64, ldv: *s32, Q: *float64, ldq: *s32, work: *float64, ncycle: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stgsja_ :: (jobu: *u8, jobv: *u8, jobq: *u8, m: *s32, p: *s32, n: *s32, k: *s32, l: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, tola: *float, tolb: *float, alpha: *float, beta: *float, U: *float, ldu: *s32, V: *float, ldv: *s32, Q: *float, ldq: *s32, work: *float, ncycle: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtgsna_ :: (job: *u8, howmny: *u8, select: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, S: *float64, DIF: *float64, mm: *s32, m: *s32, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stgsna_ :: (job: *u8, howmny: *u8, select: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, S: *float, DIF: *float, mm: *s32, m: *s32, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtgsyl_ :: (trans: *u8, ijob: *s32, m: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, C: *float64, ldc: *s32, D: *float64, ldd: *s32, E: *float64, lde: *s32, F: *float64, ldf: *s32, dif: *float64, scale: *float64, work: *float64, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

stgsyl_ :: (trans: *u8, ijob: *s32, m: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, C: *float, ldc: *s32, D: *float, ldd: *s32, E: *float, lde: *s32, F: *float, ldf: *s32, dif: *float, scale: *float, work: *float, lwork: *s32, iwork: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dtpcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, AP: *float64, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stpcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, AP: *float, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtplqt_ :: (m: *s32, n: *s32, l: *s32, mb: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, T: *float64, ldt: *s32, work: *float64, info: *s32) -> void #foreign libopenblas;

stplqt_ :: (m: *s32, n: *s32, l: *s32, mb: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, T: *float, ldt: *s32, work: *float, info: *s32) -> void #foreign libopenblas;

dtplqt2_ :: (m: *s32, n: *s32, l: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, T: *float64, ldt: *s32, info: *s32) -> void #foreign libopenblas;

stplqt2_ :: (m: *s32, n: *s32, l: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, T: *float, ldt: *s32, info: *s32) -> void #foreign libopenblas;

dtpmlqt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, mb: *s32, V: *float64, ldv: *s32, T: *float64, ldt: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stpmlqt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, mb: *s32, V: *float, ldv: *s32, T: *float, ldt: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtpmqrt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, nb: *s32, V: *float64, ldv: *s32, T: *float64, ldt: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stpmqrt_ :: (side: *u8, trans: *u8, m: *s32, n: *s32, k: *s32, l: *s32, nb: *s32, V: *float, ldv: *s32, T: *float, ldt: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtpqrt_ :: (m: *s32, n: *s32, l: *s32, nb: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, T: *float64, ldt: *s32, work: *float64, info: *s32) -> void #foreign libopenblas;

stpqrt_ :: (m: *s32, n: *s32, l: *s32, nb: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, T: *float, ldt: *s32, work: *float, info: *s32) -> void #foreign libopenblas;

dtpqrt2_ :: (m: *s32, n: *s32, l: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, T: *float64, ldt: *s32, info: *s32) -> void #foreign libopenblas;

stpqrt2_ :: (m: *s32, n: *s32, l: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, T: *float, ldt: *s32, info: *s32) -> void #foreign libopenblas;

dtprfb_ :: (side: *u8, trans: *u8, direct: *u8, storev: *u8, m: *s32, n: *s32, k: *s32, l: *s32, V: *float64, ldv: *s32, T: *float64, ldt: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, work: *float64, ldwork: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

stprfb_ :: (side: *u8, trans: *u8, direct: *u8, storev: *u8, m: *s32, n: *s32, k: *s32, l: *s32, V: *float, ldv: *s32, T: *float, ldt: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, work: *float, ldwork: *s32, unknown0: u64, unknown1: u64, unknown2: u64, unknown3: u64) -> void #foreign libopenblas;

dtprfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, AP: *float64, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stprfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, AP: *float, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtptri_ :: (uplo: *u8, diag: *u8, n: *s32, AP: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stptri_ :: (uplo: *u8, diag: *u8, n: *s32, AP: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtptrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, AP: *float64, B: *float64, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

stptrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, AP: *float, B: *float, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtpttf_ :: (transr: *u8, uplo: *u8, n: *s32, AP: *float64, ARF: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

stpttf_ :: (transr: *u8, uplo: *u8, n: *s32, AP: *float, ARF: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtpttr_ :: (uplo: *u8, n: *s32, AP: *float64, A: *float64, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

stpttr_ :: (uplo: *u8, n: *s32, AP: *float, A: *float, lda: *s32, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dtrcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, A: *float64, lda: *s32, rcond: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

strcon_ :: (norm: *u8, uplo: *u8, diag: *u8, n: *s32, A: *float, lda: *s32, rcond: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtrevc_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, T: *float64, ldt: *s32, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, mm: *s32, m: *s32, work: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strevc_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, T: *float, ldt: *s32, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, mm: *s32, m: *s32, work: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtrevc3_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, T: *float64, ldt: *s32, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, mm: *s32, m: *s32, work: *float64, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strevc3_ :: (side: *u8, howmny: *u8, select: *s32, n: *s32, T: *float, ldt: *s32, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, mm: *s32, m: *s32, work: *float, lwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtrexc_ :: (compq: *u8, n: *s32, T: *float64, ldt: *s32, Q: *float64, ldq: *s32, ifst: *s32, ilst: *s32, work: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

strexc_ :: (compq: *u8, n: *s32, T: *float, ldt: *s32, Q: *float, ldq: *s32, ifst: *s32, ilst: *s32, work: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dtrrfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, X: *float64, ldx: *s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

strrfs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, X: *float, ldx: *s32, ferr: *float, berr: *float, work: *float, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> void #foreign libopenblas;

dtrsen_ :: (job: *u8, compq: *u8, select: *s32, n: *s32, T: *float64, ldt: *s32, Q: *float64, ldq: *s32, WR: *float64, WI: *float64, m: *s32, s: *float64, sep: *float64, work: *float64, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strsen_ :: (job: *u8, compq: *u8, select: *s32, n: *s32, T: *float, ldt: *s32, Q: *float, ldq: *s32, WR: *float, WI: *float, m: *s32, s: *float, sep: *float, work: *float, lwork: *s32, iwork: *s32, liwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtrsna_ :: (job: *u8, howmny: *u8, select: *s32, n: *s32, T: *float64, ldt: *s32, VL: *float64, ldvl: *s32, VR: *float64, ldvr: *s32, S: *float64, SEP: *float64, mm: *s32, m: *s32, work: *float64, ldwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strsna_ :: (job: *u8, howmny: *u8, select: *s32, n: *s32, T: *float, ldt: *s32, VL: *float, ldvl: *s32, VR: *float, ldvr: *s32, S: *float, SEP: *float, mm: *s32, m: *s32, work: *float, ldwork: *s32, iwork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtrsyl_ :: (trana: *u8, tranb: *u8, isgn: *s32, m: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, C: *float64, ldc: *s32, scale: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strsyl_ :: (trana: *u8, tranb: *u8, isgn: *s32, m: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, C: *float, ldc: *s32, scale: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

// dtrsyl3_ :: (trana: *u8, tranb: *u8, isgn: *s32, m: *s32, n: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, C: *float64, ldc: *s32, scale: *float64, iwork: *s32, liwork: *s32, swork: *float64, ldswork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

// strsyl3_ :: (trana: *u8, tranb: *u8, isgn: *s32, m: *s32, n: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, C: *float, ldc: *s32, scale: *float, iwork: *s32, liwork: *s32, swork: *float, ldswork: *s32, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign __UnknownLib;

dtrtri_ :: (uplo: *u8, diag: *u8, n: *s32, A: *float64, lda: *s32, info: *s32, unknown0: u64, unknown1: u64) -> s32 #foreign libopenblas;

strtri_ :: (uplo: *u8, diag: *u8, n: *s32, A: *float, lda: *s32, info: *s32, unknown0: u64, unknown1: u64) -> s32 #foreign libopenblas;

dtrtrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, A: *float64, lda: *s32, B: *float64, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> s32 #foreign libopenblas;

strtrs_ :: (uplo: *u8, trans: *u8, diag: *u8, n: *s32, nrhs: *s32, A: *float, lda: *s32, B: *float, ldb: *s32, info: *s32, unknown0: u64, unknown1: u64, unknown2: u64) -> s32 #foreign libopenblas;

dtrttf_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float64, lda: *s32, ARF: *float64, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

strttf_ :: (transr: *u8, uplo: *u8, n: *s32, A: *float, lda: *s32, ARF: *float, info: *s32, unknown0: u64, unknown1: u64) -> void #foreign libopenblas;

dtrttp_ :: (uplo: *u8, n: *s32, A: *float64, lda: *s32, AP: *float64, info: *s32, unknown0: u64) -> void #foreign libopenblas;

strttp_ :: (uplo: *u8, n: *s32, A: *float, lda: *s32, AP: *float, info: *s32, unknown0: u64) -> void #foreign libopenblas;

dtzrzf_ :: (m: *s32, n: *s32, A: *float64, lda: *s32, tau: *float64, work: *float64, lwork: *s32, info: *s32) -> void #foreign libopenblas;

stzrzf_ :: (m: *s32, n: *s32, A: *float, lda: *s32, tau: *float, work: *float, lwork: *s32, info: *s32) -> void #foreign libopenblas;

/* C-LAPACK function prototypes */
LAPACKE_sbdsdc :: (matrix_layout: s32, uplo: u8, compq: u8, n: s32, d: *float, e: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, q: *float, iq: *s32) -> s32 #foreign libopenblas;

LAPACKE_dbdsdc :: (matrix_layout: s32, uplo: u8, compq: u8, n: s32, d: *float64, e: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, q: *float64, iq: *s32) -> s32 #foreign libopenblas;

LAPACKE_sbdsqr :: (matrix_layout: s32, uplo: u8, n: s32, ncvt: s32, nru: s32, ncc: s32, d: *float, e: *float, vt: *float, ldvt: s32, u: *float, ldu: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dbdsqr :: (matrix_layout: s32, uplo: u8, n: s32, ncvt: s32, nru: s32, ncc: s32, d: *float64, e: *float64, vt: *float64, ldvt: s32, u: *float64, ldu: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sbdsvdx :: (matrix_layout: s32, uplo: u8, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, ns: *s32, s: *float, z: *float, ldz: s32, superb: *s32) -> s32 #foreign libopenblas;

LAPACKE_dbdsvdx :: (matrix_layout: s32, uplo: u8, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, ns: *s32, s: *float64, z: *float64, ldz: s32, superb: *s32) -> s32 #foreign libopenblas;

LAPACKE_sdisna :: (job: u8, m: s32, n: s32, d: *float, sep: *float) -> s32 #foreign libopenblas;

LAPACKE_ddisna :: (job: u8, m: s32, n: s32, d: *float64, sep: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbbrd :: (matrix_layout: s32, vect: u8, m: s32, n: s32, ncc: s32, kl: s32, ku: s32, ab: *float, ldab: s32, d: *float, e: *float, q: *float, ldq: s32, pt: *float, ldpt: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dgbbrd :: (matrix_layout: s32, vect: u8, m: s32, n: s32, ncc: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, d: *float64, e: *float64, q: *float64, ldq: s32, pt: *float64, ldpt: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sgbcon :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, ipiv: *s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbcon :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, ipiv: *s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbequ :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbequ :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbequb :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbequb :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbrfs :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbrfs :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sgbrfsx :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dgbrfsx :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_sgbsv :: (matrix_layout: s32, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgbsv :: (matrix_layout: s32, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgbsvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, rpivot: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbsvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, rpivot: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sgbsvxx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dgbsvxx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_sgbtrf :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgbtrf :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgbtrs :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgbtrs :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgebak :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, scale: *float, m: s32, v: *float, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_dgebak :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, scale: *float64, m: s32, v: *float64, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_sgebal :: (matrix_layout: s32, job: u8, n: s32, a: *float, lda: s32, ilo: *s32, ihi: *s32, scale: *float) -> s32 #foreign libopenblas;

LAPACKE_dgebal :: (matrix_layout: s32, job: u8, n: s32, a: *float64, lda: s32, ilo: *s32, ihi: *s32, scale: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgebrd :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, d: *float, e: *float, tauq: *float, taup: *float) -> s32 #foreign libopenblas;

LAPACKE_dgebrd :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, d: *float64, e: *float64, tauq: *float64, taup: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgecon :: (matrix_layout: s32, norm: u8, n: s32, a: *float, lda: s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dgecon :: (matrix_layout: s32, norm: u8, n: s32, a: *float64, lda: s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeequ :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeequ :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeequb :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeequb :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgees :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_S_SELECT2, n: s32, a: *float, lda: s32, sdim: *s32, wr: *float, wi: *float, vs: *float, ldvs: s32) -> s32 #foreign libopenblas;

LAPACKE_dgees :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_D_SELECT2, n: s32, a: *float64, lda: s32, sdim: *s32, wr: *float64, wi: *float64, vs: *float64, ldvs: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeesx :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_S_SELECT2, sense: u8, n: s32, a: *float, lda: s32, sdim: *s32, wr: *float, wi: *float, vs: *float, ldvs: s32, rconde: *float, rcondv: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeesx :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_D_SELECT2, sense: u8, n: s32, a: *float64, lda: s32, sdim: *s32, wr: *float64, wi: *float64, vs: *float64, ldvs: s32, rconde: *float64, rcondv: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeev :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeev :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeevx :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float, lda: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, ilo: *s32, ihi: *s32, scale: *float, abnrm: *float, rconde: *float, rcondv: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeevx :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float64, lda: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, ilo: *s32, ihi: *s32, scale: *float64, abnrm: *float64, rconde: *float64, rcondv: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgehrd :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgehrd :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgejsv :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, jobr: u8, jobt: u8, jobp: u8, m: s32, n: s32, a: *float, lda: s32, sva: *float, u: *float, ldu: s32, v: *float, ldv: s32, stat: *float, istat: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgejsv :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, jobr: u8, jobt: u8, jobp: u8, m: s32, n: s32, a: *float64, lda: s32, sva: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, stat: *float64, istat: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelq2 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgelq2 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgelqf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgelqf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgels :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgels :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgelsd :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, s: *float, rcond: float, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgelsd :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, s: *float64, rcond: float64, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelss :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, s: *float, rcond: float, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgelss :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, s: *float64, rcond: float64, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelsy :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, jpvt: *s32, rcond: float, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgelsy :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, jpvt: *s32, rcond: float64, rank: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqlf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqlf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqp3 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, jpvt: *s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqp3 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, jpvt: *s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqpf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, jpvt: *s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqpf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, jpvt: *s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqr2 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqr2 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqrf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqrf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqrfp :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqrfp :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgerfs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dgerfs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sgerfsx :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dgerfsx :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_sgerqf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dgerqf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgesdd :: (matrix_layout: s32, jobz: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesdd :: (matrix_layout: s32, jobz: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesv :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesv :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsgesv :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, iter: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvd :: (matrix_layout: s32, jobu: u8, jobvt: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, superb: *float) -> s32 #foreign libopenblas;

LAPACKE_dgesvd :: (matrix_layout: s32, jobu: u8, jobvt: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, superb: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgesvdx :: (matrix_layout: s32, jobu: u8, jobvt: u8, range: u8, m: s32, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, ns: *s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, superb: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvdx :: (matrix_layout: s32, jobu: u8, jobvt: u8, range: u8, m: s32, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, ns: *s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, superb: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvdq :: (matrix_layout: s32, joba: u8, jobp: u8, jobr: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, v: *float, ldv: s32, numrank: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvdq :: (matrix_layout: s32, joba: u8, jobp: u8, jobr: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, numrank: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvj :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float, lda: s32, sva: *float, mv: s32, v: *float, ldv: s32, stat: *float) -> s32 #foreign libopenblas;

LAPACKE_dgesvj :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float64, lda: s32, sva: *float64, mv: s32, v: *float64, ldv: s32, stat: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgesvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, rpivot: *float) -> s32 #foreign libopenblas;

LAPACKE_dgesvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, rpivot: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sgesvxx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dgesvxx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_sgetf2 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetf2 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrf2 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrf2 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetri :: (matrix_layout: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetri :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sggbak :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, lscale: *float, rscale: *float, m: s32, v: *float, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_dggbak :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, lscale: *float64, rscale: *float64, m: s32, v: *float64, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_sggbal :: (matrix_layout: s32, job: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float) -> s32 #foreign libopenblas;

LAPACKE_dggbal :: (matrix_layout: s32, job: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgges :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32) -> s32 #foreign libopenblas;

LAPACKE_dgges :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32) -> s32 #foreign libopenblas;

LAPACKE_sgges3 :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32) -> s32 #foreign libopenblas;

LAPACKE_dgges3 :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32) -> s32 #foreign libopenblas;

LAPACKE_sggesx :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, sense: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32, rconde: *float, rcondv: *float) -> s32 #foreign libopenblas;

LAPACKE_dggesx :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, sense: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32, rconde: *float64, rcondv: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggev :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_dggev :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_sggev3 :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_dggev3 :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32) -> s32 #foreign libopenblas;

LAPACKE_sggevx :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, abnrm: *float, bbnrm: *float, rconde: *float, rcondv: *float) -> s32 #foreign libopenblas;

LAPACKE_dggevx :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, abnrm: *float64, bbnrm: *float64, rconde: *float64, rcondv: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggglm :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float, lda: s32, b: *float, ldb: s32, d: *float, x: *float, y: *float) -> s32 #foreign libopenblas;

LAPACKE_dggglm :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float64, lda: s32, b: *float64, ldb: s32, d: *float64, x: *float64, y: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgghrd :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dgghrd :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sgghd3 :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dgghd3 :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sgglse :: (matrix_layout: s32, m: s32, n: s32, p: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, d: *float, x: *float) -> s32 #foreign libopenblas;

LAPACKE_dgglse :: (matrix_layout: s32, m: s32, n: s32, p: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, d: *float64, x: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggqrf :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float, lda: s32, taua: *float, b: *float, ldb: s32, taub: *float) -> s32 #foreign libopenblas;

LAPACKE_dggqrf :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float64, lda: s32, taua: *float64, b: *float64, ldb: s32, taub: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggrqf :: (matrix_layout: s32, m: s32, p: s32, n: s32, a: *float, lda: s32, taua: *float, b: *float, ldb: s32, taub: *float) -> s32 #foreign libopenblas;

LAPACKE_dggrqf :: (matrix_layout: s32, m: s32, p: s32, n: s32, a: *float64, lda: s32, taua: *float64, b: *float64, ldb: s32, taub: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggsvd :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float, lda: s32, b: *float, ldb: s32, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvd :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float64, lda: s32, b: *float64, ldb: s32, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvd3 :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float, lda: s32, b: *float, ldb: s32, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvd3 :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float64, lda: s32, b: *float64, ldb: s32, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvp :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, k: *s32, l: *s32, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvp :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, k: *s32, l: *s32, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvp3 :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, k: *s32, l: *s32, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvp3 :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, k: *s32, l: *s32, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_sgtcon :: (norm: u8, n: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dgtcon :: (norm: u8, n: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgtrfs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, dlf: *float, df: *float, duf: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dgtrfs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, dlf: *float64, df: *float64, duf: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgtsv :: (matrix_layout: s32, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgtsv :: (matrix_layout: s32, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgtsvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, dlf: *float, df: *float, duf: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dgtsvx :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, dlf: *float64, df: *float64, duf: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgttrf :: (n: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgttrf :: (n: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgttrs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgttrs :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_shgeqz :: (matrix_layout: s32, job: u8, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float, ldh: s32, t: *float, ldt: s32, alphar: *float, alphai: *float, beta: *float, q: *float, ldq: s32, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dhgeqz :: (matrix_layout: s32, job: u8, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float64, ldh: s32, t: *float64, ldt: s32, alphar: *float64, alphai: *float64, beta: *float64, q: *float64, ldq: s32, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_shsein :: (matrix_layout: s32, job: u8, eigsrc: u8, initv: u8, select: *s32, n: s32, h: *float, ldh: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32, ifaill: *s32, ifailr: *s32) -> s32 #foreign libopenblas;

LAPACKE_dhsein :: (matrix_layout: s32, job: u8, eigsrc: u8, initv: u8, select: *s32, n: s32, h: *float64, ldh: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32, ifaill: *s32, ifailr: *s32) -> s32 #foreign libopenblas;

LAPACKE_shseqr :: (matrix_layout: s32, job: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float, ldh: s32, wr: *float, wi: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dhseqr :: (matrix_layout: s32, job: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float64, ldh: s32, wr: *float64, wi: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_slacn2 :: (n: s32, v: *float, x: *float, isgn: *s32, est: *float, kase: *s32, isave: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlacn2 :: (n: s32, v: *float64, x: *float64, isgn: *s32, est: *float64, kase: *s32, isave: *s32) -> s32 #foreign libopenblas;

LAPACKE_slacpy :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dlacpy :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_slag2d :: (matrix_layout: s32, m: s32, n: s32, sa: *float, ldsa: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlag2s :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, sa: *float, ldsa: s32) -> s32 #foreign libopenblas;

LAPACKE_slagge :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, d: *float, a: *float, lda: s32, iseed: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlagge :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, d: *float64, a: *float64, lda: s32, iseed: *s32) -> s32 #foreign libopenblas;

LAPACKE_slamch :: (cmach: u8) -> float #foreign libopenblas;
LAPACKE_dlamch :: (cmach: u8) -> float64 #foreign libopenblas;

// LAPACKE_slangb :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32) -> float #foreign __UnknownLib;

// LAPACKE_dlangb :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32) -> float64 #foreign __UnknownLib;

LAPACKE_slange :: (matrix_layout: s32, norm: u8, m: s32, n: s32, a: *float, lda: s32) -> float #foreign libopenblas;

LAPACKE_dlange :: (matrix_layout: s32, norm: u8, m: s32, n: s32, a: *float64, lda: s32) -> float64 #foreign libopenblas;

LAPACKE_slansy :: (matrix_layout: s32, norm: u8, uplo: u8, n: s32, a: *float, lda: s32) -> float #foreign libopenblas;

LAPACKE_dlansy :: (matrix_layout: s32, norm: u8, uplo: u8, n: s32, a: *float64, lda: s32) -> float64 #foreign libopenblas;

LAPACKE_slantr :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float, lda: s32) -> float #foreign libopenblas;

LAPACKE_dlantr :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float64, lda: s32) -> float64 #foreign libopenblas;

LAPACKE_slarfb :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, v: *float, ldv: s32, t: *float, ldt: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dlarfb :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_slarfg :: (n: s32, alpha: *float, x: *float, incx: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarfg :: (n: s32, alpha: *float64, x: *float64, incx: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_slarft :: (matrix_layout: s32, direct: u8, storev: u8, n: s32, k: s32, v: *float, ldv: s32, tau: *float, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dlarft :: (matrix_layout: s32, direct: u8, storev: u8, n: s32, k: s32, v: *float64, ldv: s32, tau: *float64, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_slarfx :: (matrix_layout: s32, side: u8, m: s32, n: s32, v: *float, tau: float, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarfx :: (matrix_layout: s32, side: u8, m: s32, n: s32, v: *float64, tau: float64, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_slarnv :: (idist: s32, iseed: *s32, n: s32, x: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarnv :: (idist: s32, iseed: *s32, n: s32, x: *float64) -> s32 #foreign libopenblas;

LAPACKE_slascl :: (matrix_layout: s32, type: u8, kl: s32, ku: s32, cfrom: float, cto: float, m: s32, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlascl :: (matrix_layout: s32, type: u8, kl: s32, ku: s32, cfrom: float64, cto: float64, m: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_slaset :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, alpha: float, beta: float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlaset :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, alpha: float64, beta: float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_slasrt :: (id: u8, n: s32, d: *float) -> s32 #foreign libopenblas;
LAPACKE_dlasrt :: (id: u8, n: s32, d: *float64) -> s32 #foreign libopenblas;

LAPACKE_slassq :: (n: s32, x: *float, incx: s32, scale: *float, sumsq: *float) -> s32 #foreign libopenblas;
LAPACKE_dlassq :: (n: s32, x: *float64, incx: s32, scale: *float64, sumsq: *float64) -> s32 #foreign libopenblas;

LAPACKE_slaswp :: (matrix_layout: s32, n: s32, a: *float, lda: s32, k1: s32, k2: s32, ipiv: *s32, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_dlaswp :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, k1: s32, k2: s32, ipiv: *s32, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_slatms :: (matrix_layout: s32, m: s32, n: s32, dist: u8, iseed: *s32, sym: u8, d: *float, mode: s32, cond: float, dmax: float, kl: s32, ku: s32, pack: u8, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlatms :: (matrix_layout: s32, m: s32, n: s32, dist: u8, iseed: *s32, sym: u8, d: *float64, mode: s32, cond: float64, dmax: float64, kl: s32, ku: s32, pack: u8, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_slauum :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlauum :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_sopgtr :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, tau: *float, q: *float, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_dopgtr :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, tau: *float64, q: *float64, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_sopmtr :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, ap: *float, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dopmtr :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, ap: *float64, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgbr :: (matrix_layout: s32, vect: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorgbr :: (matrix_layout: s32, vect: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorghr :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorghr :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorglq :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorglq :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgql :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorgql :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgqr :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorgqr :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgrq :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorgrq :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgtr :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dorgtr :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgtsqr_row :: (matrix_layout: s32, m: s32, n: s32, mb: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgtsqr_row :: (matrix_layout: s32, m: s32, n: s32, mb: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_sormbr :: (matrix_layout: s32, vect: u8, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormbr :: (matrix_layout: s32, vect: u8, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormhr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormhr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormlq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormlq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormql :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormql :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormqr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormqr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormrq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormrq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormrz :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormrz :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sormtr :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dormtr :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_spbcon :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dpbcon :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_spbequ :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpbequ :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spbrfs :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dpbrfs :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_spbstf :: (matrix_layout: s32, uplo: u8, n: s32, kb: s32, bb: *float, ldbb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbstf :: (matrix_layout: s32, uplo: u8, n: s32, kb: s32, bb: *float64, ldbb: s32) -> s32 #foreign libopenblas;

LAPACKE_spbsv :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbsv :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spbsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dpbsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_spbtrf :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbtrf :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_spbtrs :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbtrs :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spftrf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dpftrf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_spftri :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dpftri :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_spftrs :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, nrhs: s32, a: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpftrs :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spocon :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dpocon :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_spoequ :: (matrix_layout: s32, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpoequ :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spoequb :: (matrix_layout: s32, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpoequb :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sporfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dporfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sporfsx :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dporfsx :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_sposv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dposv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsposv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, iter: *s32) -> s32 #foreign libopenblas;

LAPACKE_sposvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dposvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_sposvxx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dposvxx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_spotrf2 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrf2 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotri :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotri :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sppcon :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dppcon :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_sppequ :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dppequ :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spprfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dpprfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_sppsv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dppsv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sppsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dppsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_spptrf :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dpptrf :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_spptri :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dpptri :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_spptrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpptrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spstrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, piv: *s32, rank: *s32, tol: float) -> s32 #foreign libopenblas;

LAPACKE_dpstrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, piv: *s32, rank: *s32, tol: float64) -> s32 #foreign libopenblas;

LAPACKE_sptcon :: (n: s32, d: *float, e: *float, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dptcon :: (n: s32, d: *float64, e: *float64, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_spteqr :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dpteqr :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sptrfs :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, df: *float, ef: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dptrfs :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, df: *float64, ef: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_sptsv :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dptsv :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sptsvx :: (matrix_layout: s32, fact: u8, n: s32, nrhs: s32, d: *float, e: *float, df: *float, ef: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dptsvx :: (matrix_layout: s32, fact: u8, n: s32, nrhs: s32, d: *float64, e: *float64, df: *float64, ef: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_spttrf :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;
LAPACKE_dpttrf :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_spttrs :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpttrs :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgst :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, x: *float, ldx: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgst :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, x: *float64, ldx: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgv :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgv :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgvd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgvd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgvx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgvx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbtrd :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, d: *float, e: *float, q: *float, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbtrd :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, d: *float64, e: *float64, q: *float64, ldq: s32) -> s32 #foreign libopenblas;

LAPACKE_ssfrk :: (matrix_layout: s32, transr: u8, uplo: u8, trans: u8, n: s32, k: s32, alpha: float, a: *float, lda: s32, beta: float, c: *float) -> s32 #foreign libopenblas;

LAPACKE_dsfrk :: (matrix_layout: s32, transr: u8, uplo: u8, trans: u8, n: s32, k: s32, alpha: float64, a: *float64, lda: s32, beta: float64, c: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspcon :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dspcon :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dspev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sspevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dspevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sspevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_sspgst :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, ap: *float, bp: *float) -> s32 #foreign libopenblas;

LAPACKE_dspgst :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, ap: *float64, bp: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspgv :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float, bp: *float, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dspgv :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sspgvd :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float, bp: *float, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dspgvd :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sspgvx :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float, bp: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspgvx :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssprfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dsprfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspsv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dspsv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sspsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dspsvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssptrd :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, d: *float, e: *float, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dsptrd :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, d: *float64, e: *float64, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssptrf :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsptrf :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssptri :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsptri :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssptrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsptrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sstebz :: (range: u8, order: u8, n: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, d: *float, e: *float, m: *s32, nsplit: *s32, w: *float, iblock: *s32, isplit: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstebz :: (range: u8, order: u8, n: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, d: *float64, e: *float64, m: *s32, nsplit: *s32, w: *float64, iblock: *s32, isplit: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstedc :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dstedc :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sstegr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstegr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstein :: (matrix_layout: s32, n: s32, d: *float, e: *float, m: s32, w: *float, iblock: *s32, isplit: *s32, z: *float, ldz: s32, ifailv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstein :: (matrix_layout: s32, n: s32, d: *float64, e: *float64, m: s32, w: *float64, iblock: *s32, isplit: *s32, z: *float64, ldz: s32, ifailv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstemr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, m: *s32, w: *float, z: *float, ldz: s32, nzc: s32, isuppz: *s32, tryrac: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstemr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, m: *s32, w: *float64, z: *float64, ldz: s32, nzc: s32, isuppz: *s32, tryrac: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssteqr :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsteqr :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssterf :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;
LAPACKE_dsterf :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_sstev :: (matrix_layout: s32, jobz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dstev :: (matrix_layout: s32, jobz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sstevd :: (matrix_layout: s32, jobz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dstevd :: (matrix_layout: s32, jobz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sstevr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstevr :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstevx :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstevx :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssycon :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dsycon :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyequb :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyequb :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyev :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyevd :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyevr :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevr :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevx :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssygst :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsygst :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssygv :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsygv :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssygvd :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsygvd :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssygvx :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsygvx :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyrfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyrfs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_ssyrfsx :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dsyrfsx :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_ssysv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dsysvx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

// LAPACKE_ssysvxx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dsysvxx :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_ssytrd :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, d: *float, e: *float, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dsytrd :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, d: *float64, e: *float64, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssytrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stbcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float, ldab: s32, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dtbcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float64, ldab: s32, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_stbrfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dtbrfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_stbtrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtbtrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stfsm :: (matrix_layout: s32, transr: u8, side: u8, uplo: u8, trans: u8, diag: u8, m: s32, n: s32, alpha: float, a: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtfsm :: (matrix_layout: s32, transr: u8, side: u8, uplo: u8, trans: u8, diag: u8, m: s32, n: s32, alpha: float64, a: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stftri :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dtftri :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_stfttp :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtfttp :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float64, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stfttr :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtfttr :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_stgevc :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, s: *float, lds: s32, p: *float, ldp: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgevc :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, s: *float64, lds: s32, p: *float64, ldp: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgexc :: (matrix_layout: s32, wantq: s32, wantz: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32, ifst: *s32, ilst: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgexc :: (matrix_layout: s32, wantq: s32, wantz: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32, ifst: *s32, ilst: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgsen :: (matrix_layout: s32, ijob: s32, wantq: s32, wantz: s32, select: *s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, q: *float, ldq: s32, z: *float, ldz: s32, m: *s32, pl: *float, pr: *float, dif: *float) -> s32 #foreign libopenblas;

LAPACKE_dtgsen :: (matrix_layout: s32, ijob: s32, wantq: s32, wantz: s32, select: *s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, q: *float64, ldq: s32, z: *float64, ldz: s32, m: *s32, pl: *float64, pr: *float64, dif: *float64) -> s32 #foreign libopenblas;

LAPACKE_stgsja :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, k: s32, l: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, ncycle: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsja :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, k: s32, l: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, ncycle: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgsna :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, s: *float, dif: *float, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsna :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, s: *float64, dif: *float64, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgsyl :: (matrix_layout: s32, trans: u8, ijob: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, d: *float, ldd: s32, e: *float, lde: s32, f: *float, ldf: s32, scale: *float, dif: *float) -> s32 #foreign libopenblas;

LAPACKE_dtgsyl :: (matrix_layout: s32, trans: u8, ijob: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, d: *float64, ldd: s32, e: *float64, lde: s32, f: *float64, ldf: s32, scale: *float64, dif: *float64) -> s32 #foreign libopenblas;

LAPACKE_stpcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, ap: *float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dtpcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, ap: *float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_stprfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dtprfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_stptri :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtptri :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stptrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtptrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stpttf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, ap: *float, arf: *float) -> s32 #foreign libopenblas;

LAPACKE_dtpttf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, ap: *float64, arf: *float64) -> s32 #foreign libopenblas;

LAPACKE_stpttr :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpttr :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_strcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, a: *float, lda: s32, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrcon :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, a: *float64, lda: s32, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_strevc :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, t: *float, ldt: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrevc :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, t: *float64, ldt: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_strexc :: (matrix_layout: s32, compq: u8, n: s32, t: *float, ldt: s32, q: *float, ldq: s32, ifst: *s32, ilst: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrexc :: (matrix_layout: s32, compq: u8, n: s32, t: *float64, ldt: s32, q: *float64, ldq: s32, ifst: *s32, ilst: *s32) -> s32 #foreign libopenblas;

LAPACKE_strrfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrrfs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64) -> s32 #foreign libopenblas;

LAPACKE_strsen :: (matrix_layout: s32, job: u8, compq: u8, select: *s32, n: s32, t: *float, ldt: s32, q: *float, ldq: s32, wr: *float, wi: *float, m: *s32, s: *float, sep: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrsen :: (matrix_layout: s32, job: u8, compq: u8, select: *s32, n: s32, t: *float64, ldt: s32, q: *float64, ldq: s32, wr: *float64, wi: *float64, m: *s32, s: *float64, sep: *float64) -> s32 #foreign libopenblas;

LAPACKE_strsna :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, t: *float, ldt: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, s: *float, sep: *float, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrsna :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, t: *float64, ldt: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, s: *float64, sep: *float64, mm: s32, m: *s32) -> s32 #foreign libopenblas;

LAPACKE_strsyl :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, scale: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrsyl :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, scale: *float64) -> s32 #foreign libopenblas;

// LAPACKE_strsyl3 :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, scale: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dtrsyl3 :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, scale: *float64) -> s32 #foreign __UnknownLib;

LAPACKE_strtri :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtrtri :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_strtrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtrtrs :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_strttf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float, lda: s32, arf: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrttf :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64, lda: s32, arf: *float64) -> s32 #foreign libopenblas;

LAPACKE_strttp :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrttp :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stzrzf :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dtzrzf :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_sbdsdc_work :: (matrix_layout: s32, uplo: u8, compq: u8, n: s32, d: *float, e: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, q: *float, iq: *s32, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dbdsdc_work :: (matrix_layout: s32, uplo: u8, compq: u8, n: s32, d: *float64, e: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, q: *float64, iq: *s32, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sbdsvdx_work :: (matrix_layout: s32, uplo: u8, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, ns: *s32, s: *float, z: *float, ldz: s32, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dbdsvdx_work :: (matrix_layout: s32, uplo: u8, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, ns: *s32, s: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sbdsqr_work :: (matrix_layout: s32, uplo: u8, n: s32, ncvt: s32, nru: s32, ncc: s32, d: *float, e: *float, vt: *float, ldvt: s32, u: *float, ldu: s32, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dbdsqr_work :: (matrix_layout: s32, uplo: u8, n: s32, ncvt: s32, nru: s32, ncc: s32, d: *float64, e: *float64, vt: *float64, ldvt: s32, u: *float64, ldu: s32, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sdisna_work :: (job: u8, m: s32, n: s32, d: *float, sep: *float) -> s32 #foreign libopenblas;

LAPACKE_ddisna_work :: (job: u8, m: s32, n: s32, d: *float64, sep: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbbrd_work :: (matrix_layout: s32, vect: u8, m: s32, n: s32, ncc: s32, kl: s32, ku: s32, ab: *float, ldab: s32, d: *float, e: *float, q: *float, ldq: s32, pt: *float, ldpt: s32, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbbrd_work :: (matrix_layout: s32, vect: u8, m: s32, n: s32, ncc: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, d: *float64, e: *float64, q: *float64, ldq: s32, pt: *float64, ldpt: s32, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbcon_work :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, ipiv: *s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgbcon_work :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, ipiv: *s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgbequ_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbequ_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbequb_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgbequb_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgbrfs_work :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgbrfs_work :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sgbrfsx_work :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dgbrfsx_work :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_sgbsv_work :: (matrix_layout: s32, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgbsv_work :: (matrix_layout: s32, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgbsvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgbsvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sgbsvxx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dgbsvxx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_sgbtrf_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgbtrf_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgbtrs_work :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float, ldab: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgbtrs_work :: (matrix_layout: s32, trans: u8, n: s32, kl: s32, ku: s32, nrhs: s32, ab: *float64, ldab: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgebak_work :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, scale: *float, m: s32, v: *float, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_dgebak_work :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, scale: *float64, m: s32, v: *float64, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_sgebal_work :: (matrix_layout: s32, job: u8, n: s32, a: *float, lda: s32, ilo: *s32, ihi: *s32, scale: *float) -> s32 #foreign libopenblas;

LAPACKE_dgebal_work :: (matrix_layout: s32, job: u8, n: s32, a: *float64, lda: s32, ilo: *s32, ihi: *s32, scale: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgebrd_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, d: *float, e: *float, tauq: *float, taup: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgebrd_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, d: *float64, e: *float64, tauq: *float64, taup: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgecon_work :: (matrix_layout: s32, norm: u8, n: s32, a: *float, lda: s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgecon_work :: (matrix_layout: s32, norm: u8, n: s32, a: *float64, lda: s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgeequ_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeequ_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeequb_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, r: *float, c: *float, rowcnd: *float, colcnd: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeequb_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, r: *float64, c: *float64, rowcnd: *float64, colcnd: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgees_work :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_S_SELECT2, n: s32, a: *float, lda: s32, sdim: *s32, wr: *float, wi: *float, vs: *float, ldvs: s32, work: *float, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgees_work :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_D_SELECT2, n: s32, a: *float64, lda: s32, sdim: *s32, wr: *float64, wi: *float64, vs: *float64, ldvs: s32, work: *float64, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgeesx_work :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_S_SELECT2, sense: u8, n: s32, a: *float, lda: s32, sdim: *s32, wr: *float, wi: *float, vs: *float, ldvs: s32, rconde: *float, rcondv: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgeesx_work :: (matrix_layout: s32, jobvs: u8, sort: u8, select: LAPACK_D_SELECT2, sense: u8, n: s32, a: *float64, lda: s32, sdim: *s32, wr: *float64, wi: *float64, vs: *float64, ldvs: s32, rconde: *float64, rcondv: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgeev_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeev_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeevx_work :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float, lda: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, ilo: *s32, ihi: *s32, scale: *float, abnrm: *float, rconde: *float, rcondv: *float, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgeevx_work :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float64, lda: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, ilo: *s32, ihi: *s32, scale: *float64, abnrm: *float64, rconde: *float64, rcondv: *float64, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgehrd_work :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgehrd_work :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgejsv_work :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, jobr: u8, jobt: u8, jobp: u8, m: s32, n: s32, a: *float, lda: s32, sva: *float, u: *float, ldu: s32, v: *float, ldv: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgejsv_work :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, jobr: u8, jobt: u8, jobp: u8, m: s32, n: s32, a: *float64, lda: s32, sva: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelq2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgelq2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgelqf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgelqf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgels_work :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgels_work :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgelsd_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, s: *float, rcond: float, rank: *s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgelsd_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, s: *float64, rcond: float64, rank: *s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelss_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, s: *float, rcond: float, rank: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgelss_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, s: *float64, rcond: float64, rank: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgelsy_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, jpvt: *s32, rcond: float, rank: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgelsy_work :: (matrix_layout: s32, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, jpvt: *s32, rcond: float64, rank: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqlf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqlf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqp3_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, jpvt: *s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqp3_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, jpvt: *s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqpf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, jpvt: *s32, tau: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqpf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, jpvt: *s32, tau: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqr2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqr2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqrf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqrfp_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrfp_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgerfs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgerfs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sgerfsx_work :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dgerfsx_work :: (matrix_layout: s32, trans: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_sgerqf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgerqf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesdd_work :: (matrix_layout: s32, jobz: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgesdd_work :: (matrix_layout: s32, jobz: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgedmd_work :: (matrix_layout: s32, jobs: u8, jobz: u8, jobr: u8, jobf: u8, whtsvd: s32, m: s32, n: s32, x: *float, ldx: s32, y: *float, ldy: s32, nrnk: s32, tol: *float, k: s32, reig: *float, imeig: *float, z: *float, ldz: s32, res: *float, b: *float, ldb: s32, w: *float, ldw: s32, s: *float, lds: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgedmd_work :: (matrix_layout: s32, jobs: u8, jobz: u8, jobr: u8, jobf: u8, whtsvd: s32, m: s32, n: s32, x: *float64, ldx: s32, y: *float64, ldy: s32, nrnk: s32, tol: *float64, k: s32, reig: *float64, imeig: *float64, z: *float64, ldz: s32, res: *float64, b: *float64, ldb: s32, w: *float64, ldw: s32, s: *float64, lds: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgedmdq_work :: (matrix_layout: s32, jobs: u8, jobz: u8, jobr: u8, jobq: u8, jobt: u8, jobf: u8, whtsvd: s32, m: s32, n: s32, f: *float, ldf: s32, x: *float, ldx: s32, y: *float, ldy: s32, nrnk: s32, tol: *float, k: s32, reig: *float, imeig: *float, z: *float, ldz: s32, res: *float, b: *float, ldb: s32, v: *float, ldv: s32, s: *float, lds: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgedmdq_work :: (matrix_layout: s32, jobs: u8, jobz: u8, jobr: u8, jobq: u8, jobt: u8, jobf: u8, whtsvd: s32, m: s32, n: s32, f: *float64, ldf: s32, x: *float64, ldx: s32, y: *float64, ldy: s32, nrnk: s32, tol: *float64, k: s32, reig: *float64, imeig: *float64, z: *float64, ldz: s32, res: *float64, b: *float64, ldb: s32, v: *float64, ldv: s32, s: *float64, lds: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesv_work :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesv_work :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsgesv_work :: (matrix_layout: s32, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, work: *float64, swork: *float, iter: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvd_work :: (matrix_layout: s32, jobu: u8, jobvt: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvd_work :: (matrix_layout: s32, jobu: u8, jobvt: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvdx_work :: (matrix_layout: s32, jobu: u8, jobvt: u8, range: u8, m: s32, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, ns: *s32, s: *float, u: *float, ldu: s32, vt: *float, ldvt: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvdx_work :: (matrix_layout: s32, jobu: u8, jobvt: u8, range: u8, m: s32, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, ns: *s32, s: *float64, u: *float64, ldu: s32, vt: *float64, ldvt: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvdq_work :: (matrix_layout: s32, joba: u8, jobp: u8, jobr: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float, lda: s32, s: *float, u: *float, ldu: s32, v: *float, ldv: s32, numrank: *s32, iwork: *s32, liwork: s32, work: *float, lwork: s32, rwork: *float, lrwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvdq_work :: (matrix_layout: s32, joba: u8, jobp: u8, jobr: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float64, lda: s32, s: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, numrank: *s32, iwork: *s32, liwork: s32, work: *float64, lwork: s32, rwork: *float64, lrwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvj_work :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float, lda: s32, sva: *float, mv: s32, v: *float, ldv: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvj_work :: (matrix_layout: s32, joba: u8, jobu: u8, jobv: u8, m: s32, n: s32, a: *float64, lda: s32, sva: *float64, mv: s32, v: *float64, ldv: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgesvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgesvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sgesvxx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, r: *float, c: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dgesvxx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, r: *float64, c: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_sgetf2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetf2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrf2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrf2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgetri_work :: (matrix_layout: s32, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetri_work :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgetrs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetrs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sggbak_work :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, lscale: *float, rscale: *float, m: s32, v: *float, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_dggbak_work :: (matrix_layout: s32, job: u8, side: u8, n: s32, ilo: s32, ihi: s32, lscale: *float64, rscale: *float64, m: s32, v: *float64, ldv: s32) -> s32 #foreign libopenblas;

LAPACKE_sggbal_work :: (matrix_layout: s32, job: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dggbal_work :: (matrix_layout: s32, job: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgges_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32, work: *float, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgges_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32, work: *float64, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgges3_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32, work: *float, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgges3_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32, work: *float64, lwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggesx_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_S_SELECT3, sense: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, sdim: *s32, alphar: *float, alphai: *float, beta: *float, vsl: *float, ldvsl: s32, vsr: *float, ldvsr: s32, rconde: *float, rcondv: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggesx_work :: (matrix_layout: s32, jobvsl: u8, jobvsr: u8, sort: u8, selctg: LAPACK_D_SELECT3, sense: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, sdim: *s32, alphar: *float64, alphai: *float64, beta: *float64, vsl: *float64, ldvsl: s32, vsr: *float64, ldvsr: s32, rconde: *float64, rcondv: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggev_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggev_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sggev3_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggev3_work :: (matrix_layout: s32, jobvl: u8, jobvr: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sggevx_work :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, ilo: *s32, ihi: *s32, lscale: *float, rscale: *float, abnrm: *float, bbnrm: *float, rconde: *float, rcondv: *float, work: *float, lwork: s32, iwork: *s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggevx_work :: (matrix_layout: s32, balanc: u8, jobvl: u8, jobvr: u8, sense: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, ilo: *s32, ihi: *s32, lscale: *float64, rscale: *float64, abnrm: *float64, bbnrm: *float64, rconde: *float64, rcondv: *float64, work: *float64, lwork: s32, iwork: *s32, bwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggglm_work :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float, lda: s32, b: *float, ldb: s32, d: *float, x: *float, y: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggglm_work :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float64, lda: s32, b: *float64, ldb: s32, d: *float64, x: *float64, y: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgghrd_work :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dgghrd_work :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_sgghd3_work :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgghd3_work :: (matrix_layout: s32, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgglse_work :: (matrix_layout: s32, m: s32, n: s32, p: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, d: *float, x: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgglse_work :: (matrix_layout: s32, m: s32, n: s32, p: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, d: *float64, x: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sggqrf_work :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float, lda: s32, taua: *float, b: *float, ldb: s32, taub: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggqrf_work :: (matrix_layout: s32, n: s32, m: s32, p: s32, a: *float64, lda: s32, taua: *float64, b: *float64, ldb: s32, taub: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sggrqf_work :: (matrix_layout: s32, m: s32, p: s32, n: s32, a: *float, lda: s32, taua: *float, b: *float, ldb: s32, taub: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggrqf_work :: (matrix_layout: s32, m: s32, p: s32, n: s32, a: *float64, lda: s32, taua: *float64, b: *float64, ldb: s32, taub: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvd_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float, lda: s32, b: *float, ldb: s32, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvd_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float64, lda: s32, b: *float64, ldb: s32, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvd3_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float, lda: s32, b: *float, ldb: s32, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvd3_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, n: s32, p: s32, k: *s32, l: *s32, a: *float64, lda: s32, b: *float64, ldb: s32, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sggsvp_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, k: *s32, l: *s32, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, iwork: *s32, tau: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dggsvp_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, k: *s32, l: *s32, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, iwork: *s32, tau: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sggsvp3_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, k: *s32, l: *s32, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, iwork: *s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dggsvp3_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, k: *s32, l: *s32, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, iwork: *s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgtcon_work :: (norm: u8, n: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgtcon_work :: (norm: u8, n: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgtrfs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, dlf: *float, df: *float, duf: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgtrfs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, dlf: *float64, df: *float64, duf: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgtsv_work :: (matrix_layout: s32, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgtsv_work :: (matrix_layout: s32, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgtsvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, dlf: *float, df: *float, duf: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgtsvx_work :: (matrix_layout: s32, fact: u8, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, dlf: *float64, df: *float64, duf: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgttrf_work :: (n: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dgttrf_work :: (n: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgttrs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float, d: *float, du: *float, du2: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgttrs_work :: (matrix_layout: s32, trans: u8, n: s32, nrhs: s32, dl: *float64, d: *float64, du: *float64, du2: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_shgeqz_work :: (matrix_layout: s32, job: u8, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float, ldh: s32, t: *float, ldt: s32, alphar: *float, alphai: *float, beta: *float, q: *float, ldq: s32, z: *float, ldz: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dhgeqz_work :: (matrix_layout: s32, job: u8, compq: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float64, ldh: s32, t: *float64, ldt: s32, alphar: *float64, alphai: *float64, beta: *float64, q: *float64, ldq: s32, z: *float64, ldz: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_shsein_work :: (matrix_layout: s32, job: u8, eigsrc: u8, initv: u8, select: *s32, n: s32, h: *float, ldh: s32, wr: *float, wi: *float, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32, work: *float, ifaill: *s32, ifailr: *s32) -> s32 #foreign libopenblas;

LAPACKE_dhsein_work :: (matrix_layout: s32, job: u8, eigsrc: u8, initv: u8, select: *s32, n: s32, h: *float64, ldh: s32, wr: *float64, wi: *float64, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32, work: *float64, ifaill: *s32, ifailr: *s32) -> s32 #foreign libopenblas;

LAPACKE_shseqr_work :: (matrix_layout: s32, job: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float, ldh: s32, wr: *float, wi: *float, z: *float, ldz: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dhseqr_work :: (matrix_layout: s32, job: u8, compz: u8, n: s32, ilo: s32, ihi: s32, h: *float64, ldh: s32, wr: *float64, wi: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_slacn2_work :: (n: s32, v: *float, x: *float, isgn: *s32, est: *float, kase: *s32, isave: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlacn2_work :: (n: s32, v: *float64, x: *float64, isgn: *s32, est: *float64, kase: *s32, isave: *s32) -> s32 #foreign libopenblas;

LAPACKE_slacpy_work :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dlacpy_work :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_slag2d_work :: (matrix_layout: s32, m: s32, n: s32, sa: *float, ldsa: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlag2s_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, sa: *float, ldsa: s32) -> s32 #foreign libopenblas;

LAPACKE_slagge_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, d: *float, a: *float, lda: s32, iseed: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dlagge_work :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, d: *float64, a: *float64, lda: s32, iseed: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_slagsy_work :: (matrix_layout: s32, n: s32, k: s32, d: *float, a: *float, lda: s32, iseed: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dlagsy_work :: (matrix_layout: s32, n: s32, k: s32, d: *float64, a: *float64, lda: s32, iseed: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_slapmr_work :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlapmr_work :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float64, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_slapmt_work :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlapmt_work :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float64, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_slartgp_work :: (f: float, g: float, cs: *float, sn: *float, r: *float) -> s32 #foreign libopenblas;

LAPACKE_dlartgp_work :: (f: float64, g: float64, cs: *float64, sn: *float64, r: *float64) -> s32 #foreign libopenblas;

LAPACKE_slartgs_work :: (x: float, y: float, sigma: float, cs: *float, sn: *float) -> s32 #foreign libopenblas;

LAPACKE_dlartgs_work :: (x: float64, y: float64, sigma: float64, cs: *float64, sn: *float64) -> s32 #foreign libopenblas;

LAPACKE_slapy2_work :: (x: float, y: float) -> float #foreign libopenblas;
LAPACKE_dlapy2_work :: (x: float64, y: float64) -> float64 #foreign libopenblas;

LAPACKE_slapy3_work :: (x: float, y: float, z: float) -> float #foreign libopenblas;
LAPACKE_dlapy3_work :: (x: float64, y: float64, z: float64) -> float64 #foreign libopenblas;

LAPACKE_slamch_work :: (cmach: u8) -> float #foreign libopenblas;
LAPACKE_dlamch_work :: (cmach: u8) -> float64 #foreign libopenblas;

// LAPACKE_slangb_work :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32, work: *float) -> float #foreign __UnknownLib;

// LAPACKE_dlangb_work :: (matrix_layout: s32, norm: u8, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32, work: *float64) -> float64 #foreign __UnknownLib;

LAPACKE_slange_work :: (matrix_layout: s32, norm: u8, m: s32, n: s32, a: *float, lda: s32, work: *float) -> float #foreign libopenblas;

LAPACKE_dlange_work :: (matrix_layout: s32, norm: u8, m: s32, n: s32, a: *float64, lda: s32, work: *float64) -> float64 #foreign libopenblas;

LAPACKE_slansy_work :: (matrix_layout: s32, norm: u8, uplo: u8, n: s32, a: *float, lda: s32, work: *float) -> float #foreign libopenblas;

LAPACKE_dlansy_work :: (matrix_layout: s32, norm: u8, uplo: u8, n: s32, a: *float64, lda: s32, work: *float64) -> float64 #foreign libopenblas;

LAPACKE_slantr_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float, lda: s32, work: *float) -> float #foreign libopenblas;

LAPACKE_dlantr_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float64, lda: s32, work: *float64) -> float64 #foreign libopenblas;

LAPACKE_slarfb_work :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, v: *float, ldv: s32, t: *float, ldt: s32, c: *float, ldc: s32, work: *float, ldwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dlarfb_work :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, c: *float64, ldc: s32, work: *float64, ldwork: s32) -> s32 #foreign libopenblas;

LAPACKE_slarfg_work :: (n: s32, alpha: *float, x: *float, incx: s32, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarfg_work :: (n: s32, alpha: *float64, x: *float64, incx: s32, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_slarft_work :: (matrix_layout: s32, direct: u8, storev: u8, n: s32, k: s32, v: *float, ldv: s32, tau: *float, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dlarft_work :: (matrix_layout: s32, direct: u8, storev: u8, n: s32, k: s32, v: *float64, ldv: s32, tau: *float64, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_slarfx_work :: (matrix_layout: s32, side: u8, m: s32, n: s32, v: *float, tau: float, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarfx_work :: (matrix_layout: s32, side: u8, m: s32, n: s32, v: *float64, tau: float64, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_slarnv_work :: (idist: s32, iseed: *s32, n: s32, x: *float) -> s32 #foreign libopenblas;

LAPACKE_dlarnv_work :: (idist: s32, iseed: *s32, n: s32, x: *float64) -> s32 #foreign libopenblas;

LAPACKE_slascl_work :: (matrix_layout: s32, type: u8, kl: s32, ku: s32, cfrom: float, cto: float, m: s32, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlascl_work :: (matrix_layout: s32, type: u8, kl: s32, ku: s32, cfrom: float64, cto: float64, m: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_slaset_work :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, alpha: float, beta: float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlaset_work :: (matrix_layout: s32, uplo: u8, m: s32, n: s32, alpha: float64, beta: float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_slasrt_work :: (id: u8, n: s32, d: *float) -> s32 #foreign libopenblas;
LAPACKE_dlasrt_work :: (id: u8, n: s32, d: *float64) -> s32 #foreign libopenblas;

LAPACKE_slassq_work :: (n: s32, x: *float, incx: s32, scale: *float, sumsq: *float) -> s32 #foreign libopenblas;
LAPACKE_dlassq_work :: (n: s32, x: *float64, incx: s32, scale: *float64, sumsq: *float64) -> s32 #foreign libopenblas;

LAPACKE_slaswp_work :: (matrix_layout: s32, n: s32, a: *float, lda: s32, k1: s32, k2: s32, ipiv: *s32, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_dlaswp_work :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, k1: s32, k2: s32, ipiv: *s32, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_slatms_work :: (matrix_layout: s32, m: s32, n: s32, dist: u8, iseed: *s32, sym: u8, d: *float, mode: s32, cond: float, dmax: float, kl: s32, ku: s32, pack: u8, a: *float, lda: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dlatms_work :: (matrix_layout: s32, m: s32, n: s32, dist: u8, iseed: *s32, sym: u8, d: *float64, mode: s32, cond: float64, dmax: float64, kl: s32, ku: s32, pack: u8, a: *float64, lda: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_slauum_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dlauum_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_sopgtr_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, tau: *float, q: *float, ldq: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dopgtr_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, tau: *float64, q: *float64, ldq: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sopmtr_work :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, ap: *float, tau: *float, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dopmtr_work :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, ap: *float64, tau: *float64, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sorgbr_work :: (matrix_layout: s32, vect: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgbr_work :: (matrix_layout: s32, vect: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorghr_work :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorghr_work :: (matrix_layout: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorglq_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorglq_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgql_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgql_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgqr_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgqr_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgrq_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgrq_work :: (matrix_layout: s32, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgtr_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgtr_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorgtsqr_row_work :: (matrix_layout: s32, m: s32, n: s32, mb: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorgtsqr_row_work :: (matrix_layout: s32, m: s32, n: s32, mb: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormbr_work :: (matrix_layout: s32, vect: u8, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormbr_work :: (matrix_layout: s32, vect: u8, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormhr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, ilo: s32, ihi: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormhr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, ilo: s32, ihi: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormlq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormlq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormql_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormql_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormqr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormqr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormrq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormrq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormrz_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormrz_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sormtr_work :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, a: *float, lda: s32, tau: *float, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dormtr_work :: (matrix_layout: s32, side: u8, uplo: u8, trans: u8, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_spbcon_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dpbcon_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_spbequ_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpbequ_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spbrfs_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dpbrfs_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_spbstf_work :: (matrix_layout: s32, uplo: u8, n: s32, kb: s32, bb: *float, ldbb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbstf_work :: (matrix_layout: s32, uplo: u8, n: s32, kb: s32, bb: *float64, ldbb: s32) -> s32 #foreign libopenblas;

LAPACKE_spbsv_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbsv_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spbsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, afb: *float, ldafb: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dpbsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, afb: *float64, ldafb: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_spbtrf_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbtrf_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_spbtrs_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpbtrs_work :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spftrf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dpftrf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_spftri_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dpftri_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_spftrs_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, nrhs: s32, a: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpftrs_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spocon_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dpocon_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_spoequ_work :: (matrix_layout: s32, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpoequ_work :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spoequb_work :: (matrix_layout: s32, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dpoequb_work :: (matrix_layout: s32, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_sporfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dporfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sporfsx_work :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dporfsx_work :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_sposv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dposv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsposv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, work: *float64, swork: *float, iter: *s32) -> s32 #foreign libopenblas;

LAPACKE_sposvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dposvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_sposvxx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dposvxx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_spotrf2_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrf2_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotri_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotri_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spotrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpotrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sppcon_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dppcon_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sppequ_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, s: *float, scond: *float, amax: *float) -> s32 #foreign libopenblas;

LAPACKE_dppequ_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, s: *float64, scond: *float64, amax: *float64) -> s32 #foreign libopenblas;

LAPACKE_spprfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dpprfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sppsv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dppsv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sppsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dppsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_spptrf_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dpptrf_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_spptri_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dpptri_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_spptrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpptrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_spstrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, piv: *s32, rank: *s32, tol: float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dpstrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, piv: *s32, rank: *s32, tol: float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sptcon_work :: (n: s32, d: *float, e: *float, anorm: float, rcond: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dptcon_work :: (n: s32, d: *float64, e: *float64, anorm: float64, rcond: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_spteqr_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dpteqr_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sptrfs_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, df: *float, ef: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dptrfs_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, df: *float64, ef: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sptsv_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dptsv_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sptsvx_work :: (matrix_layout: s32, fact: u8, n: s32, nrhs: s32, d: *float, e: *float, df: *float, ef: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dptsvx_work :: (matrix_layout: s32, fact: u8, n: s32, nrhs: s32, d: *float64, e: *float64, df: *float64, ef: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_spttrf_work :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;
LAPACKE_dpttrf_work :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_spttrs_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float, e: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dpttrs_work :: (matrix_layout: s32, n: s32, nrhs: s32, d: *float64, e: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsbev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssbevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgst_work :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, x: *float, ldx: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsbgst_work :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, x: *float64, ldx: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssbgv_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, w: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsbgv_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, w: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssbgvd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgvd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbgvx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float, ldab: s32, bb: *float, ldbb: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbgvx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ka: s32, kb: s32, ab: *float64, ldab: s32, bb: *float64, ldbb: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbtrd_work :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, d: *float, e: *float, q: *float, ldq: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsbtrd_work :: (matrix_layout: s32, vect: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, d: *float64, e: *float64, q: *float64, ldq: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssfrk_work :: (matrix_layout: s32, transr: u8, uplo: u8, trans: u8, n: s32, k: s32, alpha: float, a: *float, lda: s32, beta: float, c: *float) -> s32 #foreign libopenblas;

LAPACKE_dsfrk_work :: (matrix_layout: s32, transr: u8, uplo: u8, trans: u8, n: s32, k: s32, alpha: float64, a: *float64, lda: s32, beta: float64, c: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspcon_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspcon_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sspev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float, w: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dspev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, w: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dspevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sspevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_sspgst_work :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, ap: *float, bp: *float) -> s32 #foreign libopenblas;

LAPACKE_dspgst_work :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, ap: *float64, bp: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspgv_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float, bp: *float, w: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dspgv_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, w: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sspgvd_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float, bp: *float, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dspgvd_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sspgvx_work :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float, bp: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspgvx_work :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, ap: *float64, bp: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssprfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsprfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sspsv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dspsv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sspsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float, afp: *float, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dspsvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, ap: *float64, afp: *float64, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssptrd_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, d: *float, e: *float, tau: *float) -> s32 #foreign libopenblas;

LAPACKE_dsptrd_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, d: *float64, e: *float64, tau: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssptrf_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsptrf_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssptri_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, ipiv: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsptri_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, ipiv: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssptrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsptrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, ap: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sstebz_work :: (range: u8, order: u8, n: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, d: *float, e: *float, m: *s32, nsplit: *s32, w: *float, iblock: *s32, isplit: *s32, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstebz_work :: (range: u8, order: u8, n: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, d: *float64, e: *float64, m: *s32, nsplit: *s32, w: *float64, iblock: *s32, isplit: *s32, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstedc_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dstedc_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sstegr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dstegr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sstein_work :: (matrix_layout: s32, n: s32, d: *float, e: *float, m: s32, w: *float, iblock: *s32, isplit: *s32, z: *float, ldz: s32, work: *float, iwork: *s32, ifailv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstein_work :: (matrix_layout: s32, n: s32, d: *float64, e: *float64, m: s32, w: *float64, iblock: *s32, isplit: *s32, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifailv: *s32) -> s32 #foreign libopenblas;

LAPACKE_sstemr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, m: *s32, w: *float, z: *float, ldz: s32, nzc: s32, isuppz: *s32, tryrac: *s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dstemr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, m: *s32, w: *float64, z: *float64, ldz: s32, nzc: s32, isuppz: *s32, tryrac: *s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssteqr_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsteqr_work :: (matrix_layout: s32, compz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssterf_work :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;
LAPACKE_dsterf_work :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_sstev_work :: (matrix_layout: s32, jobz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dstev_work :: (matrix_layout: s32, jobz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sstevd_work :: (matrix_layout: s32, jobz: u8, n: s32, d: *float, e: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dstevd_work :: (matrix_layout: s32, jobz: u8, n: s32, d: *float64, e: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sstevr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dstevr_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sstevx_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float, e: *float, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dstevx_work :: (matrix_layout: s32, jobz: u8, range: u8, n: s32, d: *float64, e: *float64, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssycon_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsycon_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyequb_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, s: *float, scond: *float, amax: *float, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyequb_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, s: *float64, scond: *float64, amax: *float64, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyev_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevd_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevr_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevr_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevx_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssygst_work :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsygst_work :: (matrix_layout: s32, itype: s32, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssygv_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsygv_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssygvd_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsygvd_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssygvx_work :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsygvx_work :: (matrix_layout: s32, itype: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyrfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyrfs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_ssyrfsx_work :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dsyrfsx_work :: (matrix_layout: s32, uplo: u8, equed: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_ssysv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, ferr: *float, berr: *float, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsysvx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, ferr: *float64, berr: *float64, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

// LAPACKE_ssysvxx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, af: *float, ldaf: s32, ipiv: *s32, equed: *u8, s: *float, b: *float, ldb: s32, x: *float, ldx: s32, rcond: *float, rpvgrw: *float, berr: *float, n_err_bnds: s32, err_bnds_norm: *float, err_bnds_comp: *float, nparams: s32, params: *float, work: *float, iwork: *s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dsysvxx_work :: (matrix_layout: s32, fact: u8, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, af: *float64, ldaf: s32, ipiv: *s32, equed: *u8, s: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, rcond: *float64, rpvgrw: *float64, berr: *float64, n_err_bnds: s32, err_bnds_norm: *float64, err_bnds_comp: *float64, nparams: s32, params: *float64, work: *float64, iwork: *s32) -> s32 #foreign __UnknownLib;

LAPACKE_ssytrd_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, d: *float, e: *float, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrd_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, d: *float64, e: *float64, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dsytri_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stbcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float, ldab: s32, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtbcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float64, ldab: s32, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stbrfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtbrfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stbtrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float, ldab: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtbtrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, kd: s32, nrhs: s32, ab: *float64, ldab: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stfsm_work :: (matrix_layout: s32, transr: u8, side: u8, uplo: u8, trans: u8, diag: u8, m: s32, n: s32, alpha: float, a: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtfsm_work :: (matrix_layout: s32, transr: u8, side: u8, uplo: u8, trans: u8, diag: u8, m: s32, n: s32, alpha: float64, a: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stftri_work :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_dtftri_work :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_stfttp_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtfttp_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float64, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stfttr_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtfttr_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, arf: *float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_stgevc_work :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, s: *float, lds: s32, p: *float, ldp: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dtgevc_work :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, s: *float64, lds: s32, p: *float64, ldp: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_stgexc_work :: (matrix_layout: s32, wantq: s32, wantz: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, q: *float, ldq: s32, z: *float, ldz: s32, ifst: *s32, ilst: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dtgexc_work :: (matrix_layout: s32, wantq: s32, wantz: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, q: *float64, ldq: s32, z: *float64, ldz: s32, ifst: *s32, ilst: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_stgsen_work :: (matrix_layout: s32, ijob: s32, wantq: s32, wantz: s32, select: *s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, alphar: *float, alphai: *float, beta: *float, q: *float, ldq: s32, z: *float, ldz: s32, m: *s32, pl: *float, pr: *float, dif: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsen_work :: (matrix_layout: s32, ijob: s32, wantq: s32, wantz: s32, select: *s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, alphar: *float64, alphai: *float64, beta: *float64, q: *float64, ldq: s32, z: *float64, ldz: s32, m: *s32, pl: *float64, pr: *float64, dif: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_stgsja_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, k: s32, l: s32, a: *float, lda: s32, b: *float, ldb: s32, tola: float, tolb: float, alpha: *float, beta: *float, u: *float, ldu: s32, v: *float, ldv: s32, q: *float, ldq: s32, work: *float, ncycle: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsja_work :: (matrix_layout: s32, jobu: u8, jobv: u8, jobq: u8, m: s32, p: s32, n: s32, k: s32, l: s32, a: *float64, lda: s32, b: *float64, ldb: s32, tola: float64, tolb: float64, alpha: *float64, beta: *float64, u: *float64, ldu: s32, v: *float64, ldv: s32, q: *float64, ldq: s32, work: *float64, ncycle: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgsna_work :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, s: *float, dif: *float, mm: s32, m: *s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsna_work :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, s: *float64, dif: *float64, mm: s32, m: *s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stgsyl_work :: (matrix_layout: s32, trans: u8, ijob: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, d: *float, ldd: s32, e: *float, lde: s32, f: *float, ldf: s32, scale: *float, dif: *float, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtgsyl_work :: (matrix_layout: s32, trans: u8, ijob: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, d: *float64, ldd: s32, e: *float64, lde: s32, f: *float64, ldf: s32, scale: *float64, dif: *float64, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stpcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, ap: *float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtpcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, ap: *float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stprfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtprfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_stptri_work :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtptri_work :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stptrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtptrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, ap: *float64, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stpttf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, ap: *float, arf: *float) -> s32 #foreign libopenblas;

LAPACKE_dtpttf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, ap: *float64, arf: *float64) -> s32 #foreign libopenblas;

LAPACKE_stpttr_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpttr_work :: (matrix_layout: s32, uplo: u8, n: s32, ap: *float64, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_strcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, a: *float, lda: s32, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrcon_work :: (matrix_layout: s32, norm: u8, uplo: u8, diag: u8, n: s32, a: *float64, lda: s32, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_strevc_work :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, t: *float, ldt: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, mm: s32, m: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrevc_work :: (matrix_layout: s32, side: u8, howmny: u8, select: *s32, n: s32, t: *float64, ldt: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, mm: s32, m: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_strexc_work :: (matrix_layout: s32, compq: u8, n: s32, t: *float, ldt: s32, q: *float, ldq: s32, ifst: *s32, ilst: *s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrexc_work :: (matrix_layout: s32, compq: u8, n: s32, t: *float64, ldt: s32, q: *float64, ldq: s32, ifst: *s32, ilst: *s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_strrfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, x: *float, ldx: s32, ferr: *float, berr: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrrfs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, x: *float64, ldx: s32, ferr: *float64, berr: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_strsen_work :: (matrix_layout: s32, job: u8, compq: u8, select: *s32, n: s32, t: *float, ldt: s32, q: *float, ldq: s32, wr: *float, wi: *float, m: *s32, s: *float, sep: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dtrsen_work :: (matrix_layout: s32, job: u8, compq: u8, select: *s32, n: s32, t: *float64, ldt: s32, q: *float64, ldq: s32, wr: *float64, wi: *float64, m: *s32, s: *float64, sep: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_strsna_work :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, t: *float, ldt: s32, vl: *float, ldvl: s32, vr: *float, ldvr: s32, s: *float, sep: *float, mm: s32, m: *s32, work: *float, ldwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dtrsna_work :: (matrix_layout: s32, job: u8, howmny: u8, select: *s32, n: s32, t: *float64, ldt: s32, vl: *float64, ldvl: s32, vr: *float64, ldvr: s32, s: *float64, sep: *float64, mm: s32, m: *s32, work: *float64, ldwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_strsyl_work :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, scale: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrsyl_work :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, scale: *float64) -> s32 #foreign libopenblas;

// LAPACKE_strsyl3_work :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float, lda: s32, b: *float, ldb: s32, c: *float, ldc: s32, scale: *float, iwork: *s32, liwork: s32, swork: *float, ldswork: s32) -> s32 #foreign __UnknownLib;

// LAPACKE_dtrsyl3_work :: (matrix_layout: s32, trana: u8, tranb: u8, isgn: s32, m: s32, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, c: *float64, ldc: s32, scale: *float64, iwork: *s32, liwork: s32, swork: *float64, ldswork: s32) -> s32 #foreign __UnknownLib;

LAPACKE_strtri_work :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtrtri_work :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_strtrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtrtrs_work :: (matrix_layout: s32, uplo: u8, trans: u8, diag: u8, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_strttf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float, lda: s32, arf: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrttf_work :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, a: *float64, lda: s32, arf: *float64) -> s32 #foreign libopenblas;

LAPACKE_strttp_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_dtrttp_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_stzrzf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, tau: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dtzrzf_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, tau: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_slagsy :: (matrix_layout: s32, n: s32, k: s32, d: *float, a: *float, lda: s32, iseed: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlagsy :: (matrix_layout: s32, n: s32, k: s32, d: *float64, a: *float64, lda: s32, iseed: *s32) -> s32 #foreign libopenblas;

LAPACKE_slapmr :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlapmr :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float64, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_slapmt :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_dlapmt :: (matrix_layout: s32, forwrd: s32, m: s32, n: s32, x: *float64, ldx: s32, k: *s32) -> s32 #foreign libopenblas;

LAPACKE_slapy2 :: (x: float, y: float) -> float #foreign libopenblas;
LAPACKE_dlapy2 :: (x: float64, y: float64) -> float64 #foreign libopenblas;

LAPACKE_slapy3 :: (x: float, y: float, z: float) -> float #foreign libopenblas;
LAPACKE_dlapy3 :: (x: float64, y: float64, z: float64) -> float64 #foreign libopenblas;

LAPACKE_slartgp :: (f: float, g: float, cs: *float, sn: *float, r: *float) -> s32 #foreign libopenblas;
LAPACKE_dlartgp :: (f: float64, g: float64, cs: *float64, sn: *float64, r: *float64) -> s32 #foreign libopenblas;

LAPACKE_slartgs :: (x: float, y: float, sigma: float, cs: *float, sn: *float) -> s32 #foreign libopenblas;

LAPACKE_dlartgs :: (x: float64, y: float64, sigma: float64, cs: *float64, sn: *float64) -> s32 #foreign libopenblas;

LAPACKE_dbbcsd :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, m: s32, p: s32, q: s32, theta: *float64, phi: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32, v2t: *float64, ldv2t: s32, b11d: *float64, b11e: *float64, b12d: *float64, b12e: *float64, b21d: *float64, b21e: *float64, b22d: *float64, b22e: *float64) -> s32 #foreign libopenblas;

LAPACKE_dbbcsd_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, m: s32, p: s32, q: s32, theta: *float64, phi: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32, v2t: *float64, ldv2t: s32, b11d: *float64, b11e: *float64, b12d: *float64, b12e: *float64, b21d: *float64, b21e: *float64, b22d: *float64, b22e: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorbdb :: (matrix_layout: s32, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x12: *float64, ldx12: s32, x21: *float64, ldx21: s32, x22: *float64, ldx22: s32, theta: *float64, phi: *float64, taup1: *float64, taup2: *float64, tauq1: *float64, tauq2: *float64) -> s32 #foreign libopenblas;

LAPACKE_dorbdb_work :: (matrix_layout: s32, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x12: *float64, ldx12: s32, x21: *float64, ldx21: s32, x22: *float64, ldx22: s32, theta: *float64, phi: *float64, taup1: *float64, taup2: *float64, tauq1: *float64, tauq2: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dorcsd :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x12: *float64, ldx12: s32, x21: *float64, ldx21: s32, x22: *float64, ldx22: s32, theta: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32, v2t: *float64, ldv2t: s32) -> s32 #foreign libopenblas;

LAPACKE_dorcsd_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x12: *float64, ldx12: s32, x21: *float64, ldx21: s32, x22: *float64, ldx22: s32, theta: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32, v2t: *float64, ldv2t: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dorcsd2by1 :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x21: *float64, ldx21: s32, theta: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32) -> s32 #foreign libopenblas;

LAPACKE_dorcsd2by1_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, m: s32, p: s32, q: s32, x11: *float64, ldx11: s32, x21: *float64, ldx21: s32, theta: *float64, u1: *float64, ldu1: s32, u2: *float64, ldu2: s32, v1t: *float64, ldv1t: s32, work: *float64, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyconv :: (matrix_layout: s32, uplo: u8, way: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_dsyconv_work :: (matrix_layout: s32, uplo: u8, way: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_dsyswapr :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, i1: s32, i2: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyswapr_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, i1: s32, i2: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri2 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri2_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri2x :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, nb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri2x_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, nb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs2 :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs2_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sbbcsd :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, m: s32, p: s32, q: s32, theta: *float, phi: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32, v2t: *float, ldv2t: s32, b11d: *float, b11e: *float, b12d: *float, b12e: *float, b21d: *float, b21e: *float, b22d: *float, b22e: *float) -> s32 #foreign libopenblas;

LAPACKE_sbbcsd_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, m: s32, p: s32, q: s32, theta: *float, phi: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32, v2t: *float, ldv2t: s32, b11d: *float, b11e: *float, b12d: *float, b12e: *float, b21d: *float, b21e: *float, b22d: *float, b22e: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorbdb :: (matrix_layout: s32, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x12: *float, ldx12: s32, x21: *float, ldx21: s32, x22: *float, ldx22: s32, theta: *float, phi: *float, taup1: *float, taup2: *float, tauq1: *float, tauq2: *float) -> s32 #foreign libopenblas;

LAPACKE_sorbdb_work :: (matrix_layout: s32, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x12: *float, ldx12: s32, x21: *float, ldx21: s32, x22: *float, ldx22: s32, theta: *float, phi: *float, taup1: *float, taup2: *float, tauq1: *float, tauq2: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sorcsd :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x12: *float, ldx12: s32, x21: *float, ldx21: s32, x22: *float, ldx22: s32, theta: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32, v2t: *float, ldv2t: s32) -> s32 #foreign libopenblas;

LAPACKE_sorcsd_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, jobv2t: u8, trans: u8, signs: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x12: *float, ldx12: s32, x21: *float, ldx21: s32, x22: *float, ldx22: s32, theta: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32, v2t: *float, ldv2t: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sorcsd2by1 :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x21: *float, ldx21: s32, theta: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32) -> s32 #foreign libopenblas;

LAPACKE_sorcsd2by1_work :: (matrix_layout: s32, jobu1: u8, jobu2: u8, jobv1t: u8, m: s32, p: s32, q: s32, x11: *float, ldx11: s32, x21: *float, ldx21: s32, theta: *float, u1: *float, ldu1: s32, u2: *float, ldu2: s32, v1t: *float, ldv1t: s32, work: *float, lwork: s32, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyconv :: (matrix_layout: s32, uplo: u8, way: u8, n: s32, a: *float, lda: s32, ipiv: *s32, e: *float) -> s32 #foreign libopenblas;

LAPACKE_ssyconv_work :: (matrix_layout: s32, uplo: u8, way: u8, n: s32, a: *float, lda: s32, ipiv: *s32, e: *float) -> s32 #foreign libopenblas;

LAPACKE_ssyswapr :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, i1: s32, i2: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyswapr_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, i1: s32, i2: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri2 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri2_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri2x :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, nb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri2x_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, nb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs2 :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs2_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32, work: *float) -> s32 #foreign libopenblas;

//LAPACK 3.4.0
LAPACKE_sgemqrt :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, nb: s32, v: *float, ldv: s32, t: *float, ldt: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dgemqrt :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, nb: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt2 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt2 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt3 :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt3 :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_stpmqrt :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, nb: s32, v: *float, ldv: s32, t: *float, ldt: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpmqrt :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, nb: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_stpqrt :: (matrix_layout: s32, m: s32, n: s32, l: s32, nb: s32, a: *float, lda: s32, b: *float, ldb: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpqrt :: (matrix_layout: s32, m: s32, n: s32, l: s32, nb: s32, a: *float64, lda: s32, b: *float64, ldb: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_stpqrt2 :: (matrix_layout: s32, m: s32, n: s32, l: s32, a: *float, lda: s32, b: *float, ldb: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpqrt2 :: (matrix_layout: s32, m: s32, n: s32, l: s32, a: *float64, lda: s32, b: *float64, ldb: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_stprfb :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, l: s32, v: *float, ldv: s32, t: *float, ldt: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dtprfb :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, l: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgemqrt_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, nb: s32, v: *float, ldv: s32, t: *float, ldt: s32, c: *float, ldc: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgemqrt_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, nb: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, c: *float64, ldc: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt_work :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt_work :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt2_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqrt3_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqrt3_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_stpmqrt_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, nb: s32, v: *float, ldv: s32, t: *float, ldt: s32, a: *float, lda: s32, b: *float, ldb: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dtpmqrt_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, l: s32, nb: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, a: *float64, lda: s32, b: *float64, ldb: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_stpqrt_work :: (matrix_layout: s32, m: s32, n: s32, l: s32, nb: s32, a: *float, lda: s32, b: *float, ldb: s32, t: *float, ldt: s32, work: *float) -> s32 #foreign libopenblas;

LAPACKE_dtpqrt_work :: (matrix_layout: s32, m: s32, n: s32, l: s32, nb: s32, a: *float64, lda: s32, b: *float64, ldb: s32, t: *float64, ldt: s32, work: *float64) -> s32 #foreign libopenblas;

LAPACKE_stpqrt2_work :: (matrix_layout: s32, m: s32, n: s32, l: s32, a: *float, lda: s32, b: *float, ldb: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dtpqrt2_work :: (matrix_layout: s32, m: s32, n: s32, l: s32, a: *float64, lda: s32, b: *float64, ldb: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_stprfb_work :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, l: s32, v: *float, ldv: s32, t: *float, ldt: s32, a: *float, lda: s32, b: *float, ldb: s32, work: *float, ldwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dtprfb_work :: (matrix_layout: s32, side: u8, trans: u8, direct: u8, storev: u8, m: s32, n: s32, k: s32, l: s32, v: *float64, ldv: s32, t: *float64, ldt: s32, a: *float64, lda: s32, b: *float64, ldb: s32, work: *float64, ldwork: s32) -> s32 #foreign libopenblas;

//LAPACK 3.X.X
LAPACKE_ssysv_rook :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_rook :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_rook :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_rook :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_rook :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_rook :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysv_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_rook_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ilaver :: (vers_major: *s32, vers_minor: *s32, vers_patch: *s32) -> void #foreign libopenblas;

// LAPACK 3.7.0
LAPACKE_ssysv_aa :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysv_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_aa :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_aa :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_aa :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_aa :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, ipiv: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_aa :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_aa_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, ipiv: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysv_rk :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, e: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysv_rk_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, e: *float, ipiv: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_rk :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_rk_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_rk :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_rk :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_rk_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_rk_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_3 :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_3_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_3 :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, e: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_3_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, e: *float, ipiv: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri_3 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri_3 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytri_3_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytri_3_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssycon_3 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32, anorm: float, rcond: *float) -> s32 #foreign libopenblas;

LAPACKE_dsycon_3 :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, anorm: float64, rcond: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssycon_3_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, e: *float, ipiv: *s32, anorm: float, rcond: *float, work: *float, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsycon_3_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, e: *float64, ipiv: *s32, anorm: float64, rcond: *float64, work: *float64, iwork: *s32) -> s32 #foreign libopenblas;

LAPACKE_sgelq :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, tsize: s32) -> s32 #foreign libopenblas;

LAPACKE_dgelq :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, tsize: s32) -> s32 #foreign libopenblas;

LAPACKE_sgelq_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, tsize: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgelq_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, tsize: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgemlq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, t: *float, tsize: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dgemlq :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, t: *float64, tsize: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sgemlq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, t: *float, tsize: s32, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgemlq_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, t: *float64, tsize: s32, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqr :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, tsize: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqr :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, tsize: s32) -> s32 #foreign libopenblas;

LAPACKE_sgeqr_work :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32, t: *float, tsize: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgeqr_work :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32, t: *float64, tsize: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgemqr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, t: *float, tsize: s32, c: *float, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_dgemqr :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, t: *float64, tsize: s32, c: *float64, ldc: s32) -> s32 #foreign libopenblas;

LAPACKE_sgemqr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float, lda: s32, t: *float, tsize: s32, c: *float, ldc: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgemqr_work :: (matrix_layout: s32, side: u8, trans: u8, m: s32, n: s32, k: s32, a: *float64, lda: s32, t: *float64, tsize: s32, c: *float64, ldc: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgetsls :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetsls :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_sgetsls_work :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float, lda: s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetsls_work :: (matrix_layout: s32, trans: u8, m: s32, n: s32, nrhs: s32, a: *float64, lda: s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_sgetsqrhrt :: (matrix_layout: s32, m: s32, n: s32, mb1: s32, nb1: s32, nb2: s32, a: *float, lda: s32, t: *float, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetsqrhrt :: (matrix_layout: s32, m: s32, n: s32, mb1: s32, nb1: s32, nb2: s32, a: *float64, lda: s32, t: *float64, ldt: s32) -> s32 #foreign libopenblas;

LAPACKE_sgetsqrhrt_work :: (matrix_layout: s32, m: s32, n: s32, mb1: s32, nb1: s32, nb2: s32, a: *float, lda: s32, t: *float, ldt: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dgetsqrhrt_work :: (matrix_layout: s32, m: s32, n: s32, mb1: s32, nb1: s32, nb2: s32, a: *float64, lda: s32, t: *float64, ldt: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyev_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyev_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyevd_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsyevd_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssyevr_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevr_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevx_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevx_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssyev_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyev_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevd_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, w: *float, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevd_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, w: *float64, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevr_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, isuppz: *s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevr_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, isuppz: *s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssyevx_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float, lda: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsyevx_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, a: *float64, lda: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbev_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbev_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevd_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevd_2stage :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevx_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevx_2stage :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssbev_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbev_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevd_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevd_2stage_work :: (matrix_layout: s32, jobz: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, liwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssbevx_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32, q: *float, ldq: s32, vl: float, vu: float, il: s32, iu: s32, abstol: float, m: *s32, w: *float, z: *float, ldz: s32, work: *float, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsbevx_2stage_work :: (matrix_layout: s32, jobz: u8, range: u8, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32, q: *float64, ldq: s32, vl: float64, vu: float64, il: s32, iu: s32, abstol: float64, m: *s32, w: *float64, z: *float64, ldz: s32, work: *float64, lwork: s32, iwork: *s32, ifail: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssygv_2stage :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float) -> s32 #foreign libopenblas;

LAPACKE_dsygv_2stage :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64) -> s32 #foreign libopenblas;

LAPACKE_ssygv_2stage_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float, lda: s32, b: *float, ldb: s32, w: *float, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsygv_2stage_work :: (matrix_layout: s32, itype: s32, jobz: u8, uplo: u8, n: s32, a: *float64, lda: s32, b: *float64, ldb: s32, w: *float64, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

//LAPACK 3.8.0
LAPACKE_ssysv_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssysv_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float, ldb: s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsysv_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float64, ldb: s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrf_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32, work: *float, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrf_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32, work: *float64, lwork: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_ssytrs_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float, lda: s32, tb: *float, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_aa_2stage :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

LAPACKE_dsytrs_aa_2stage_work :: (matrix_layout: s32, uplo: u8, n: s32, nrhs: s32, a: *float64, lda: s32, tb: *float64, ltb: s32, ipiv: *s32, ipiv2: *s32, b: *float64, ldb: s32) -> s32 #foreign libopenblas;

//LAPACK 3.10.0
// LAPACKE_sorhr_col :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32, d: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_sorhr_col_work :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float, lda: s32, t: *float, ldt: s32, d: *float) -> s32 #foreign __UnknownLib;

// LAPACKE_dorhr_col :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32, d: *float64) -> s32 #foreign __UnknownLib;

// LAPACKE_dorhr_col_work :: (matrix_layout: s32, m: s32, n: s32, nb: s32, a: *float64, lda: s32, t: *float64, ldt: s32, d: *float64) -> s32 #foreign __UnknownLib;

/* APIs for set/get nancheck flags */
LAPACKE_set_nancheck :: (flag: s32) -> void #foreign libopenblas;
LAPACKE_get_nancheck :: () -> s32 #foreign libopenblas;

/* Error handler */
LAPACKE_xerbla :: (name: *u8, info: s32) -> void #foreign libopenblas;

/* Compare two chars (case-insensitive) */
LAPACKE_lsame :: (ca: u8, cb: u8) -> s32 #foreign libopenblas;

LAPACKE_dgb_trans :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dge_trans :: (matrix_layout: s32, m: s32, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dgg_trans :: (matrix_layout: s32, m: s32, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dhs_trans :: (matrix_layout: s32, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dpb_trans :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dpf_trans :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, in: *float64, out: *float64) -> void #foreign libopenblas;

LAPACKE_dpo_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dpp_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float64, out: *float64) -> void #foreign libopenblas;

LAPACKE_dsb_trans :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dsp_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float64, out: *float64) -> void #foreign libopenblas;

LAPACKE_dsy_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dtb_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, kd: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

LAPACKE_dtf_trans :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, in: *float64, out: *float64) -> void #foreign libopenblas;

LAPACKE_dtp_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, in: *float64, out: *float64) -> void #foreign libopenblas;

LAPACKE_dtr_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign libopenblas;

// LAPACKE_dtz_trans :: (matrix_layout: s32, direct: u8, uplo: u8, diag: u8, m: s32, n: s32, in: *float64, ldin: s32, out: *float64, ldout: s32) -> void #foreign __UnknownLib;

LAPACKE_sgb_trans :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_sge_trans :: (matrix_layout: s32, m: s32, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_sgg_trans :: (matrix_layout: s32, m: s32, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_shs_trans :: (matrix_layout: s32, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_spb_trans :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_spf_trans :: (matrix_layout: s32, transr: u8, uplo: u8, n: s32, in: *float, out: *float) -> void #foreign libopenblas;

LAPACKE_spo_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_spp_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float, out: *float) -> void #foreign libopenblas;

LAPACKE_ssb_trans :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_ssp_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float, out: *float) -> void #foreign libopenblas;

LAPACKE_ssy_trans :: (matrix_layout: s32, uplo: u8, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_stb_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, kd: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

LAPACKE_stf_trans :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, in: *float, out: *float) -> void #foreign libopenblas;

LAPACKE_stp_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, in: *float, out: *float) -> void #foreign libopenblas;

LAPACKE_str_trans :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign libopenblas;

// LAPACKE_stz_trans :: (matrix_layout: s32, direct: u8, uplo: u8, diag: u8, m: s32, n: s32, in: *float, ldin: s32, out: *float, ldout: s32) -> void #foreign __UnknownLib;

LAPACKE_d_nancheck :: (n: s32, x: *float64, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_s_nancheck :: (n: s32, x: *float, incx: s32) -> s32 #foreign libopenblas;

LAPACKE_dgb_nancheck :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dge_nancheck :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dgg_nancheck :: (matrix_layout: s32, m: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dgt_nancheck :: (n: s32, dl: *float64, d: *float64, du: *float64) -> s32 #foreign libopenblas;

LAPACKE_dhs_nancheck :: (matrix_layout: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpb_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dpf_nancheck :: (n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_dpo_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dpp_nancheck :: (n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_dpt_nancheck :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_dsb_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dsp_nancheck :: (n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_dst_nancheck :: (n: s32, d: *float64, e: *float64) -> s32 #foreign libopenblas;

LAPACKE_dsy_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_dtb_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float64, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_dtf_nancheck :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float64) -> s32 #foreign libopenblas;

LAPACKE_dtp_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float64) -> s32 #foreign libopenblas;

LAPACKE_dtr_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float64, lda: s32) -> s32 #foreign libopenblas;

// LAPACKE_dtz_nancheck :: (matrix_layout: s32, direct: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float64, lda: s32) -> s32 #foreign __UnknownLib;

LAPACKE_sgb_nancheck :: (matrix_layout: s32, m: s32, n: s32, kl: s32, ku: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_sge_nancheck :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_sgg_nancheck :: (matrix_layout: s32, m: s32, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_sgt_nancheck :: (n: s32, dl: *float, d: *float, du: *float) -> s32 #foreign libopenblas;

LAPACKE_shs_nancheck :: (matrix_layout: s32, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spb_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_spf_nancheck :: (n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_spo_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_spp_nancheck :: (n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_spt_nancheck :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;

LAPACKE_ssb_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, kd: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_ssp_nancheck :: (n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_sst_nancheck :: (n: s32, d: *float, e: *float) -> s32 #foreign libopenblas;

LAPACKE_ssy_nancheck :: (matrix_layout: s32, uplo: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

LAPACKE_stb_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, kd: s32, ab: *float, ldab: s32) -> s32 #foreign libopenblas;

LAPACKE_stf_nancheck :: (matrix_layout: s32, transr: u8, uplo: u8, diag: u8, n: s32, a: *float) -> s32 #foreign libopenblas;

LAPACKE_stp_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, ap: *float) -> s32 #foreign libopenblas;

LAPACKE_str_nancheck :: (matrix_layout: s32, uplo: u8, diag: u8, n: s32, a: *float, lda: s32) -> s32 #foreign libopenblas;

// LAPACKE_stz_nancheck :: (matrix_layout: s32, direct: u8, uplo: u8, diag: u8, m: s32, n: s32, a: *float, lda: s32) -> s32 #foreign __UnknownLib;

#scope_file

#import "Basic"; // For assert

libopenblas :: #library,no_dll "OpenBlas/lib/libopenblas";

#run {
    {
        instance: openblas_complex_float;
        assert(((cast(*void)(*instance.real)) - cast(*void)(*instance)) == 0, "openblas_complex_float.real has unexpected offset % instead of 0", ((cast(*void)(*instance.real)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_float.real)) == 4, "openblas_complex_float.real has unexpected size % instead of 4", size_of(type_of(openblas_complex_float.real)));
        assert(((cast(*void)(*instance.imag)) - cast(*void)(*instance)) == 4, "openblas_complex_float.imag has unexpected offset % instead of 4", ((cast(*void)(*instance.imag)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_float.imag)) == 4, "openblas_complex_float.imag has unexpected size % instead of 4", size_of(type_of(openblas_complex_float.imag)));
        assert(size_of(openblas_complex_float) == 8, "openblas_complex_float has size % instead of 8", size_of(openblas_complex_float));
    }

    {
        instance: openblas_complex_double;
        assert(((cast(*void)(*instance.real)) - cast(*void)(*instance)) == 0, "openblas_complex_double.real has unexpected offset % instead of 0", ((cast(*void)(*instance.real)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_double.real)) == 8, "openblas_complex_double.real has unexpected size % instead of 8", size_of(type_of(openblas_complex_double.real)));
        assert(((cast(*void)(*instance.imag)) - cast(*void)(*instance)) == 8, "openblas_complex_double.imag has unexpected offset % instead of 8", ((cast(*void)(*instance.imag)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_double.imag)) == 8, "openblas_complex_double.imag has unexpected size % instead of 8", size_of(type_of(openblas_complex_double.imag)));
        assert(size_of(openblas_complex_double) == 16, "openblas_complex_double has size % instead of 16", size_of(openblas_complex_double));
    }

    {
        instance: openblas_complex_xdouble;
        assert(((cast(*void)(*instance.real)) - cast(*void)(*instance)) == 0, "openblas_complex_xdouble.real has unexpected offset % instead of 0", ((cast(*void)(*instance.real)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_xdouble.real)) == 8, "openblas_complex_xdouble.real has unexpected size % instead of 8", size_of(type_of(openblas_complex_xdouble.real)));
        assert(((cast(*void)(*instance.imag)) - cast(*void)(*instance)) == 8, "openblas_complex_xdouble.imag has unexpected offset % instead of 8", ((cast(*void)(*instance.imag)) - cast(*void)(*instance)));
        assert(size_of(type_of(openblas_complex_xdouble.imag)) == 8, "openblas_complex_xdouble.imag has unexpected size % instead of 8", size_of(type_of(openblas_complex_xdouble.imag)));
        assert(size_of(openblas_complex_xdouble) == 16, "openblas_complex_xdouble has size % instead of 16", size_of(openblas_complex_xdouble));
    }
}

