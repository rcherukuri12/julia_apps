using libsvm_reader
using Test
using BenchmarkTools

@testset "libsvm_reader.jl" begin
    @time y,X,m = libsvm_reader.get_sparse_vector_array("./test/data.svm")
    println(typeof(y))
    println(typeof(X))
    println(m)
    @test m == 7
end
