module Swapat

export swapat!

"""
    swapat!(A, i, j)

Swap elements `A[i]` and `A[j]` in-place and return `A`.
"""
Base.@propagate_inbounds function swapat!(A::AbstractArray, i, j)
    A[i], A[j] = A[j], A[i]
    return A
end

end # module Swapat
