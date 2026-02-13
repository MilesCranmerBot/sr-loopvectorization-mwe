# sr-loopvectorization-mwe

Minimal repo to run SymbolicRegression.jl's LoopVectorization integration MWE in GitHub Actions.

This repo is intended to support discussion in:
- https://github.com/MilesCranmer/SymbolicRegression.jl/pull/547

## What CI does

- Installs Julia (currently pinned to 1.10)
- Installs the required Julia dependencies (including SymbolicRegression.jl from the PR branch)
- Runs `run.jl`, which includes and executes the MWE.
