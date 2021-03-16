module libsvm_reader

export read
using SparseArrays


function get_sparse_vector_array(fname::String)
    labels = Float32[]
    data = []
    max_feature_index = 0
    fi = open(fname,"r")
    for line in eachline(fi)
        # remove comments
        line = rstrip(split(line,"#")[1])
        #split the line into array
        line = split(line," ")
        #store the label
        push!(labels,parse(Float32,line[1]))

    end
    close(fi)
end

end
