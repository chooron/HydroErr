function nse(simulated_array::AbstractVector{T}, observed_array::AbstractVector{T}; kwargs...)::T where {T}
    sum((simulated_array .- observed_array) .^ 2) / sum((observed_array .- mean(observed_array)) .^ 2)
end