using Test

# Load the exact test code from SymbolicRegression.jl (PR #547 branch), with the
# same relative file layout so includes work unchanged.
include("test/integration/ext/loopvectorization/test_mixed_utils.jl")

# Run the specific configuration used in the upstream integration test item:
# "Search with multiprocessing & default hyperparameters & Float64 type & turbo"
# (the test code disables `turbo` on Linux < 1.11).
test_mixed(5, false, false, :multiprocessing)
