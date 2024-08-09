function rmse(simulated_array::AbstractVector{T}, observed_array::AbstractVector{T}; kwargs...)::T where {T}
    sqrt(sum((target .- predict) .^ (2)) / length(target))
end