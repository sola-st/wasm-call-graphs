# That’s a Tough Call: Studying the Challenges of Call Graph Construction for WebAssembly

This repository contains the supplementary material for the paper "That’s a Tough Call: On Static Call Graph Construction for WebAssembly Binaries" (ISSTA'23).

## Overview

The repository is organized as follows.

- `challenges-prevalence/`: Evaluation scripts for the study of prevalence of call graph challenges (section 3).
  * `wasm/`: Source code of the Rust WebAssembly parser and analysis library.
  * `scripts/`: Scripts used to analyze WasmBench along with extracted data
- `microbenchmarks/`: Set of microbenchmarks with their build and run scripts.
- `real-world-programs/`: Programs collected from NPM and GitHub.
- `evaluation/`: Evaluation scripts, raw data and processed data for the study of soundness (and precision for the microbenchmarks) of the existing static analyses

## Requirements

If you want to run our analyses and evaluation yourself, here a rough list of the required software and input data:

- OS: Ubuntu 20.04 LTS
- Wasmtime as a WASI-compliant WebAssembly VM, see https://github.com/bytecodealliance/wasmtime
- WABT for various WebAssembly binary inspection tools, see https://github.com/WebAssembly/wabt
- Rust distribution > version 1.60 (rustc, cargo, etc.), see https://rustup.rs/
- Python >3.9
- WasmBench as the dataset for the prevalence study, see https://github.com/sola-st/WasmBench/
- The existing static analyses tools:
  * Wassail: https://github.com/acieroid/wassail
  * Binaryen (metadce): https://github.com/WebAssembly/binaryen
  * Twiggy: https://github.com/rustwasm/twiggy
  * WAVM: https://github.com/WAVM/WAVM
  * LLVM-opt, version 12 (for getting callgraph of WAVM LLVM output): https://llvm.org/

## License

All our own analysis programs are Apache 2-licensed, see `LICENSE`. We do not assume ownership or copyright of any of the WebAssembly programs we evaluate on and redistribute them here only for research purposes. All programs come from public sources.
