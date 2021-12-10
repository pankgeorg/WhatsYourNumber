pwd() == joinpath(@__DIR__, "bin") && cd(@__DIR__) # allow starting app from bin/ dir

@info "Bootstrap" ENV pwd() f(".") f("..") f("../..")
@info "Bootstrap stuff: " @__DIR__ @__FILE__ @__MODULE__

using WhatsYourNumber
push!(Base.modules_warned_for, Base.PkgId(WhatsYourNumber))
WhatsYourNumber.main()
