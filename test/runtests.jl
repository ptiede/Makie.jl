using MakieRecipes
using Literate, AbstractPlotting, CairoMakie
using Test

cd(@__DIR__)

@testset "Examples" begin
    literatedir = joinpath(@__DIR__, "..", "docs", "src", "literate")
    ispath("test_examples") || mkpath("test_examples")
    cd("test_examples") do
        @test_nowarn include(joinpath(literatedir, "examples.jl")) # execute the source file directly
    end
end
