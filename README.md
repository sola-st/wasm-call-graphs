# That’s a Tough Call: Studying the Challenges of Call Graph Construction for WebAssembly

This repository contains the supplementary material for the paper "That’s a Tough Call: On Static Call Graph Construction for WebAssembly Binaries" (under submission).

## Running via Docker

### Building the Image
To build the artifact, simply run: 
```
git clone <this repo>
cd wasm-call-graphs
chmod +x setup.sh && ./setup.sh
docker build -t toughcall .
```
The image itself is TODO GB and takes TODO minutes to build. 

### Running the Image 

The following command will launch the ToughCall Docker container in daemon mode, meaning that the docker container is running in the background and can be connected to.
```
docker run -d -t -i -p 3000:3000 -p 5000:5000 toughcall
# The container ID will be written to the console. 
```
The container ID will be needed to connect to the container. You can recover the container ID by running `docker ps` and noting the ID of the container named toughcall. You can stop the container using `docker stop <container-id>`

To connect to the container, run:
```
docker exec -it <container-id> bash
```

### Container structure 

The container is organized as follows.

- `\home\toughcall\`
  - `challenges-prevalence/`: Evaluation scripts for the study of prevalence of call graph challenges (section 3).
    - `figures/`: Figures found in the paper.
    - `wasm/`: Source code of the Rust WebAssembly parser and analysis library.
    - `scripts/`: Scripts used to analyze WasmBench along with extracted data.
  - `data/`: Raw data for microbenchmarks and real-world programs.
    - `microbenchmarks-raw-data\`: Raw data from the microbenchmark programs.
    - `real-world-programs-raw-data\`: Raw data from the real-world programs.
    - `tables\`: .tex files for tables in the paper.
    - `microbenchmarks-processed-data.json\`: Processed data from the microbenchmarks.
    - `real-world-processed-data.json \`: Processed data from the real-world programs.
  - `evaluation/`: Evaluation scripts, raw data and processed data for the study of soundness (and precision for the microbenchmarks) of the existing static analyses.
    - `instrumented-real-world-programs\`: Real world programs that have been instrumented with Wasabi.
    - `metadce-inputs\`: Inputs to MetaDCE.
    - `scripts\`: 
      - `analysis.py\`: Run analysis for real world programs and microbenchmarks.
      - `get-dyn-data.py\`: Reads the Wasabi output files and saves the data in a JSON file.
      - `get-static-data.py\`: Fetches static data for a given WebAssembly binary.
      - `get-tools-data.py\`: Runs all the tools that are being evaluated on the Wasm file that is passed in.
      - `instrument-test.sh\`: Bash script to instrument a nodejs application to collect data using Wasabi.
      - `latexify.py\`: Generates ASCII and Latex tables from processed data.
      - `run-eval.py \`: Runs evaluation for real world programs and microbenchmarks.
  - `microbenchmarks/`: Set of microbenchmarks with their build and run scripts.
  - `real-world-programs/`: Programs collected from NPM and GitHub.

## Sanity Check 

This section assumes you are in the Docker container. Run the following commands to run the evaluation: 
```
cd /home/toughcall/evaluation/scripts
python3 run-eval.py --all-fresh
```

## Detailed Artifact Description



## Extending the Artifact


## Running Locally

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
