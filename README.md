# Swapat.jl

A small interface package providing `swapat!` for `AbstractArray`s.

## Motivation

This package grew out of a discussion around adding a small utility
function `swapat!` to Julia Base for swapping two elements of an array
in-place.

While exploring this idea, it became clear that:

- The bar for adding new functions to Base is very high
- There are few Base-internal use cases
- Some array types (e.g. `BitArray`, `StructArray`, `UniqueVectors`)
  could benefit from specializing such an operation

As suggested by Julia maintainers, this functionality is better explored
as a **small standalone interface package** rather than being added
directly to Base.

## Relation to Julia Base discussion

This package is a follow-up to the JuliaLang/julia discussion and PR
around `swapat!`, and is intended as a lightweight place to experiment
with API design, benchmarks, and specialization without expanding Base.

## Usage

```julia
using Swapat

A = [1, 2, 3]
swapat!(A, 1, 3)
# A == [3, 2, 1]
