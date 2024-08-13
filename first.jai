#import "Basic";
#import "Compiler";
#import "BuildCpp";
#import "Check";
#import "Bindings_Generator";
#import "File";

#run build();

build :: () {
    set_build_options_dc(.{do_output = false});

    options := get_build_options();

    if !generate_bindings() {
        compiler_set_workspace_status(.FAILED);
        return;
    }
}

generate_bindings :: () -> bool {
    output_fiename: string;
    opts: Generate_Bindings_Options;
    {
        using opts;

        #if OS == .WINDOWS {
            output_fiename = "jaiblas_windows.jai";
            strip_flags = 0;
        } else {
            assert(false);
        }

        array_add(*libpaths, "OpenBlas/lib");
        array_add(*libnames, "libopenblas");
        array_add(*source_files, "OpenBlas/include/cblas.h");
        // array_add(*source_files, "OpenBlas/include/f77blas.h");
        array_add(*source_files, "OpenBlas/include/lapack.h");
        array_add(*source_files, "OpenBlas/include/lapacke.h");
        array_add(*source_files, "OpenBlas/include/lapacke_config.h");
        array_add(*source_files, "OpenBlas/include/lapacke_mangling.h");
        array_add(*source_files, "OpenBlas/include/lapacke_utils.h");
        array_add(*source_files, "OpenBlas/include/openblas_config.h");
    }

    return generate_bindings(opts, output_fiename);
}