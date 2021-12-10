push!(LOAD_PATH, abspath(normpath(joinpath(@__DIR__, "../src/"))))

ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true

@info ENV pwd() join(readdir(abspath(".."), join=true), "\n")

include("../bootstrap.jl")
