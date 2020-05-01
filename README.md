# mlpack_jll.jl

This is an autogenerated package constructed using [`BinaryBuilder.jl`](https://github.com/JuliaPackaging/BinaryBuilder.jl).

## Products

The code bindings within this package are autogenerated from the following `Products` defined within the `build_tarballs.jl` file that generated this package:

```julia
products = [
    LibraryProduct(["libmlpack_julia_preprocess_binarize"], :libmlpack_julia_preprocess_binarize),
    LibraryProduct(["libmlpack_julia_hmm_loglik"], :libmlpack_julia_hmm_loglik),
    LibraryProduct(["libmlpack_julia_perceptron"], :libmlpack_julia_perceptron),
    LibraryProduct(["libmlpack_julia_hmm_generate"], :libmlpack_julia_hmm_generate),
    LibraryProduct(["libmlpack_julia_hmm_train"], :libmlpack_julia_hmm_train),
    LibraryProduct(["libmlpack_julia_kfn"], :libmlpack_julia_kfn),
    LibraryProduct(["libmlpack_julia_adaboost"], :libmlpack_julia_adaboost),
    LibraryProduct(["libmlpack_julia_logistic_regression"], :libmlpack_julia_logistic_regression),
    LibraryProduct(["libmlpack_julia_krann"], :libmlpack_julia_krann),
    LibraryProduct(["libmlpack_julia_preprocess_scale"], :libmlpack_julia_preprocess_scale),
    LibraryProduct(["libmlpack_julia_lars"], :libmlpack_julia_lars),
    LibraryProduct(["libmlpack_julia_gmm_train"], :libmlpack_julia_gmm_train),
    LibraryProduct(["libmlpack_julia_util"], :libmlpack_julia_util),
    LibraryProduct(["libmlpack_julia_hoeffding_tree"], :libmlpack_julia_hoeffding_tree),
    LibraryProduct(["libmlpack_julia_kmeans"], :libmlpack_julia_kmeans),
    LibraryProduct(["libmlpack"], :libmlpack),
    LibraryProduct(["libmlpack_julia_fastmks"], :libmlpack_julia_fastmks),
    LibraryProduct(["libmlpack_julia_det"], :libmlpack_julia_det),
    LibraryProduct(["libmlpack_julia_gmm_generate"], :libmlpack_julia_gmm_generate),
    LibraryProduct(["libmlpack_julia_decision_tree"], :libmlpack_julia_decision_tree),
    LibraryProduct(["libmlpack_julia_approx_kfn"], :libmlpack_julia_approx_kfn),
    LibraryProduct(["libmlpack_julia_random_forest"], :libmlpack_julia_random_forest),
    LibraryProduct(["libmlpack_julia_mean_shift"], :libmlpack_julia_mean_shift),
    LibraryProduct(["libmlpack_julia_knn"], :libmlpack_julia_knn),
    LibraryProduct(["libmlpack_julia_decision_stump"], :libmlpack_julia_decision_stump),
    LibraryProduct(["libmlpack_julia_radical"], :libmlpack_julia_radical),
    LibraryProduct(["libmlpack_julia_cf"], :libmlpack_julia_cf),
    LibraryProduct(["libmlpack_julia_sparse_coding"], :libmlpack_julia_sparse_coding),
    LibraryProduct(["libmlpack_julia_local_coordinate_coding"], :libmlpack_julia_local_coordinate_coding),
    LibraryProduct(["libmlpack_julia_linear_svm"], :libmlpack_julia_linear_svm),
    LibraryProduct(["libmlpack_julia_lsh"], :libmlpack_julia_lsh),
    LibraryProduct(["libmlpack_julia_nbc"], :libmlpack_julia_nbc),
    LibraryProduct(["libmlpack_julia_gmm_probability"], :libmlpack_julia_gmm_probability),
    LibraryProduct(["libmlpack_julia_image_converter"], :libmlpack_julia_image_converter),
    LibraryProduct(["libmlpack_julia_kernel_pca"], :libmlpack_julia_kernel_pca),
    LibraryProduct(["libmlpack_julia_softmax_regression"], :libmlpack_julia_softmax_regression),
    LibraryProduct(["libmlpack_julia_nmf"], :libmlpack_julia_nmf),
    LibraryProduct(["libmlpack_julia_preprocess_describe"], :libmlpack_julia_preprocess_describe),
    LibraryProduct(["libmlpack_julia_pca"], :libmlpack_julia_pca),
    LibraryProduct(["libmlpack_julia_emst"], :libmlpack_julia_emst),
    LibraryProduct(["libmlpack_julia_preprocess_split"], :libmlpack_julia_preprocess_split),
    LibraryProduct(["libmlpack_julia_hmm_viterbi"], :libmlpack_julia_hmm_viterbi),
    LibraryProduct(["libmlpack_julia_dbscan"], :libmlpack_julia_dbscan),
    LibraryProduct(["libmlpack_julia_lmnn"], :libmlpack_julia_lmnn),
    LibraryProduct(["libmlpack_julia_nca"], :libmlpack_julia_nca),
    LibraryProduct(["libmlpack_julia_linear_regression"], :libmlpack_julia_linear_regression)
]
```

## Usage example

For example purposes, we will assume that the following products were defined in the imaginary package `Example_jll`:

```julia
products = [
    FileProduct("src/data.txt", :data_txt),
    LibraryProduct("libdataproc", :libdataproc),
    ExecutableProduct("mungify", :mungify_exe)
]
```

With such products defined, `Example_jll` would contain `data_txt`, `libdataproc` and `mungify_exe` symbols exported. For `FileProduct` variables, the exported value is a string pointing to the location of the file on-disk.  For `LibraryProduct` variables, it is a string corresponding to the `SONAME` of the desired library (it will have already been `dlopen()`'ed, so typical `ccall()` usage applies), and for `ExecutableProduct` variables, the exported value is a function that can be called to set appropriate environment variables.  Example:

```julia
using Example_jll

# For file products, you can access its file location directly:
data_lines = open(data_txt, "r") do io
    readlines(io)
end

# For library products, you can use the exported variable name in `ccall()` invocations directly
num_chars = ccall((:count_characters, libdataproc), Cint, (Cstring, Cint), data_lines[1], length(data_lines[1]))

# For executable products, you can use the exported variable name as a function that you can call
mungify_exe() do mungify_exe_path
    run(`$mungify_exe_path $num_chars`)
end
```
