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
        #pop the label out
        line = line[2:end]
        # create a dictionary for features
        x = Dict{Int64,Float32}()
        for itm in line
            itm = split(item,":")
            feature = parse(Int64,itm[1])
            value   = parse(Float32,itm[2])
            max_feature_index = max(max_feature_index,feature)
            push!(x,feature => value)
        end
        # create sparse vector and pass the feature-value ditionary
        sv = sparsevec(x)
        # transpose and insert into array
        push!(data,sv')
    end
    close(fi)
    return labels,data,max_feature_index
end

end # end of module
