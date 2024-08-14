function rmse(simulated_array::AbstractVector{T}, observed_array::AbstractVector{T}; kwargs...)::T where {T}
    sqrt(sum((observed_array .- simulated_array) .^ (2)) / length(observed_array))
end