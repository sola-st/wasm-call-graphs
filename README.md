# That’s a Tough Call: Studying the Challenges of Call Graph Construction for WebAssembly

This repository contains the supplementary material for the paper "That’s a Tough Call: On Static Call Graph Construction for WebAssembly Binaries" (ISSTA'23).

## Running via Docker

### Building the Image
To build the artifact, simply run: 
```
git clone <this repo>
cd wasm-call-graphs
chmod +x setup.sh && ./setup.sh
docker build -t toughcall .
```
The image itself is about 4 GB on disk and takes between 15 and 30 minutes to build, depending on hardware and network connection.

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
    - `real-world-processed-data.json\`: Processed data from the real-world programs.
  - `evaluation\`: Evaluation scripts, raw data and processed data for the study of soundness (and precision for the microbenchmarks) of the existing static analyses.
    - `instrumented-real-world-programs\`: Real world programs that have been instrumented with Wasabi.
    - `metadce-inputs\`: Inputs to MetaDCE.
    - `scripts\`: 
      - `analysis.py\`: Run analysis for real world programs and microbenchmarks.
      - `get-dyn-data.py\`: Reads the Wasabi output files and saves the data in a JSON file.
      - `get-static-data.py\`: Fetches static data for a given WebAssembly binary.
      - `get-tools-data.py\`: Runs all the tools that are being evaluated on the Wasm file that is passed in.
      - `instrument-test.sh\`: Bash script to instrument a nodejs application to collect data using Wasabi.
      - `latexify.py\`: Generates ASCII and Latex tables from processed data.
      - `run-eval.py\`: Runs evaluation for real world programs and microbenchmarks.
  - `microbenchmarks\`: Set of microbenchmarks with their build and run scripts.
  - `real-world-programs\`: Programs collected from NPM and GitHub.

## Sanity Check 

This section illustrates the general workflow of the artifact. It assumes you are in the Docker container. Running through this section should confirm that the artifact is operational.

### What is this Artifact? 

This artifact is a self-contained environment to reproduce the evaluation of the ISSTA'23 paper "That’s a Tough Call: Studying the Challenges of Call Graph Construction for WebAssembly". This artifact contains 25 microbenchmarks and 10 real-world npm applications that are used to evaluate various WebAssembly static analysis tools and frameworks. This artifact automatically builds the tools, extracts static and dynamic information from the WebAssembly binaries in each of the microbenchmarks and applications being evaluated, and runs each of the tools over them. All intermediate data has been stored in each run of the evaluation and can be inspected. 

Run the following commands to run the entire evaluation: 
```
cd /home/toughcall/evaluation/scripts
python3 run-eval.py --all-fresh
```

You should see ASCII tables for the LaTeX tables in the paper. For example: 

```
+-----------------------------------------------------------------------------------------------+
|                      Evaluation of each tool against the microbenchmarks                      |
+------------------------------------------------------+---------+-----------+---------+--------+
|                         Name                         | Wassail | WAVM+LLVM | MetaDCE | Twiggy |
+------------------------------------------------------+---------+-----------+---------+--------+
|                                                      |  S   P  |   S   P   |  S   P  | S   P  |
|                  direct-call-simple                  |  ✓   ✓  |   ✓   ✓   |  ✓   ✓  | ✓   ✓  |
|                direct-call-transitive                |  ✓   ✓  |   ✓   ✓   |  ✓   ✓  | ✓   ✓  |
|              direct-call-imported-func               |  ✓   ✓  |   ✓   ✓   |  ✓   ✓  | ✓   ✓  |
|                  entry-point-start                   |  ✓   ✓  |   ✓   ✓   |  ✓   ✓  |   -    |
|                                                     ...                                       |
+-----------------------------------------------------------------------------------------------+
```

## Detailed Artifact Description

We shall now describe various scripts used in the artifact and their output. 

### `get-static-data.py` 

This script analyzes the given WebAssembly binary and reports static information about the binary. Specifically, it reports the following information: 
1. Number of types in the type section.
2. Number of functions in the binary.
3. Detailed information about the tables in the binary, including their size, type, how the element section has been initialized and all the entries.
4. Detailed information about the import and export section, including the total number of imports/exports, imported/exported functions and if a table or memory section has been imported/exported. 
5. Detailed information about the imports including the type of import, module name, export name and internal ID.
6. Detailed information about the exports including the type of export, name and internal ID.
7. Debug names that map internal function IDs to debug names.  
8. Detailed information about calls in the binary including, each call, the total number of calls and unique calls. 
9. Detailed information about indirect calls in the binary including, the total number of indirect calls and the types of functions called indirectly.  

### `instrument-test.sh` and `get-dyn-data.py` 

`instrument-test.sh` instruments your npm application using [Wasabi](https://github.com/danleh/wasabi). It instruments a given WebAssembly file with Wasabi by generating hooks for all calls, the beginning of functions and store instructions. 

`get-dyn-data.py` then runs the instrumented npm applications and reports the exported functions and internal functions that are reachable in that run of the application. This is used later on the evaluation to determine if a call-graph analysis tool is sound and precise. Below is a sample output of the script being run on tests for the library `shiki`. 

```
Running tests for shiki...

shiki/example-cpp
7 exported functions are reachable.
518 callsites have been analyzed.
103 functions are the lower bound for the analysis.

shiki/example-js
7 exported functions are reachable.
437 callsites have been analyzed.
85 functions are the lower bound for the analysis.

shiki/example-bash
7 exported functions are reachable.
414 callsites have been analyzed.
91 functions are the lower bound for the analysis.
```

### `get-tools-data.py`

This script runs all the tools that are being evaluated on the WebAssembly file that is passed in. Each of the tools call-graph is first obtained in a run of the tool. The execution time is recorded. The call-graph graph is the normalized to a standard representation. If the tool performs dead-code elimination, the result of that is recorded and standardized. Each tools reachability graph as well as stdout and stderr are located in `data/<real/micro>/lib/tool-evaluation-data/<tool>/`. The script reports on stdout if the tools ran successfully on the WebAssembly binary, how long the tool to execute or, in the case of a failure, where the error is recorded as well as how many functions were determined to be reachable by the tool. The output of the script being run on fonteditor-core/woff2.wasm is shown below: 

```
Computing set of reachable functions for each tool being evaluated...
Executing wassail        ...SUCCESS. 1.05ms
Executing wasm-metadce   .....ERROR. Error recorded in fonteditor-core/tool-evaluation-data/metadce/output.txt.
Executing twiggy IR      ...SUCCESS. 0.86ms
Executing twiggy garbage ...SUCCESS. 1.31ms
Executing wavm           ...SUCCESS. 1.13ms
Executing llvm-as        ...SUCCESS. 1.19ms
Executing opt            ...SUCCESS. 1.15ms
1118 reachable functions computed for wassail.
 345 reachable functions computed for wavm.
 345 reachable functions computed for twiggy.
Updating test-suite-data.json...
```

### `analysis.py`, `run-eval.py` and `latexify.py`

TODO

## Extending the Artifact

TODO 

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
