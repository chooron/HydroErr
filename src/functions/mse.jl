function mse(simulated_array::AbstractVector, observed_array::AbstractVector; kwargs...)
    sum((observed_array .- simulated_array) .^ (2)) / length(observed_array)
end