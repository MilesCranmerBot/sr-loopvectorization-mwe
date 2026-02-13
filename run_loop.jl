using Test

include("test/integration/ext/loopvectorization/test_mixed_utils.jl")

# Run the MWE repeatedly in a *single* Julia session (avoids per-iteration Julia
# startup overhead, so we can fit many iterations inside the CI timeout).
const N = parse(Int, get(ENV, "N_ITERATIONS", "100"))

for i in 1:N
    println("\n===== iteration $i/$N =====")
    # If the suspected LLVM abort triggers, Julia will terminate with a nonzero
    # exit code and the workflow will fail.
    test_mixed(5, false, false, :multiprocessing)
end

println("\nAll iterations completed: $N")
