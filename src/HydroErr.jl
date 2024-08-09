module HydroErr
using Statistics
using DocStringExtensions


files = filter(x -> endswith(x, ".jl"), readdir(pwd() * "\\src\\functions", join=true))

for file in files
    include(file)
end
end
