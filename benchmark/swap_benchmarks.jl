# Benchmarks comparing `swapat!` with a manual swap pattern
#
# Run with:
#   julia --project=. benchmark/swap_benchmarks.jl
#
# All benchmarks are allocation-free and measure steady-state performance.


using Swapat
using BenchmarkTools
using Random


println("=== Vector benchmark ===")
A = collect(1:1000)
i, j = 123, 987

@btime swapat!($A, $i, $j)
@btime begin
    tmp = $A[$i]
    $A[$i] = $A[$j]
    $A[$j] = tmp
end


println("\n=== BitArray benchmark ===")
B = bitrand(1000)
i, j = 123, 987

@btime swapat!($B, $i, $j)
@btime begin
    tmp = $B[$i]
    $B[$i] = $B[$j]
    $B[$j] = tmp
end

nothing
