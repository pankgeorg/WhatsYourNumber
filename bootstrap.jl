pwd() == joinpath(@__DIR__, "bin") && cd(@__DIR__) # allow starting app from bin/ dir

@info "Bootstrap" ENV pwd() f(".") f("..") f("../..")

dir, file, mod = @__DIR__, @__FILE__, @__MODULE__ 
@info "More: " dir file mod

using WhatsYourNumber
push!(Base.modules_warned_for, Base.PkgId(WhatsYourNumber))
WhatsYourNumber.main()
