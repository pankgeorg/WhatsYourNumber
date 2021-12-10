push!(LOAD_PATH, abspath(normpath(joinpath(@__DIR__, "../src/"))))

ENV["STARTSERVER"] = true
ENV["GENIE_ENV"] = "prod"
ENV["EARLYBIND"] = true

f(t) = join(readdir(abspath(t), join=true), "\n")

@info "Test" ENV pwd() f(".") f("..") f("../..")

dir, file, mod = @__DIR__, @__FILE__, @__MODULE__ 
@info "More: " dir file mod

include("../bootstrap.jl")
