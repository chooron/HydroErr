@doc """
    Compute the mean absolute scaled error between the simulated and observed data.

    .. image:: /pictures/MASE.png

    **Range:**

    **Notes:**

    Parameters
    ----------
    simulated_array: one dimensional ndarray
        An array of simulated data from the time series.

    observed_array: one dimensional ndarray
        An array of observed data from the time series.

    m: int
        If given, indicates the seasonal period m. If not given, the default is 1.

    Returns
    -------
    float
        The mean absolute scaled error.

    References
    ----------
    - Hyndman, R.J., Koehler, A.B., 2006. Another look at measures of forecast accuracy.
      International Journal of Forecasting 22(4) 679-688.
 """
function mase(simulated_array::AbstractVector, observed_array::AbstractVector; kwargs...)
    start = m
    last = simulated_array.size .- m
    a = mean(abs(simulated_array .- observed_array))
    b = abs(observed_array[start:observed_array.size] .- observed_array[:last])
    a ./ (sum(b) ./ last)
end