function rmse(simulated_array::AbstractVector, observed_array::AbstractVector; kwargs...)
    sqrt(sum((observed_array .- simulated_array) .^ (2)) / length(observed_array))
end