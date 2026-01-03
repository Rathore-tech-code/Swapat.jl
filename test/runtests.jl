using Test
using Swapat

@testset "swapat!" begin
    A = [1, 2, 3]
    swapat!(A, 1, 3)
    @test A == [3, 2, 1]

    B = [1 2; 3 4]
    swapat!(B, 1, 4)
    @test B == [4 2; 3 1]
end
