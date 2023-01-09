global.Wasabi = require("./node_modules/@hpcc-js/wasm/dist/graphvizlib.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

var hpccWasm = require("@hpcc-js/wasm")

const dot = `
    digraph G {
        node [shape=rect];

        subgraph cluster_0 {
            style=filled;
            color=lightgrey;
            node [style=filled,color=white];
            a0 -> a1 -> a2 -> a3;
            label = "Hello";
        }

        subgraph cluster_1 {
            node [style=filled];
            b0 -> b1 -> b2 -> b3;
            label = "World";
            color=blue
        }

        start -> a0;
        start -> b0;
        a1 -> b3;
        b2 -> a3;
        a3 -> a0;
        a3 -> end;
        b3 -> end;

        start [shape=Mdiamond];
        end [shape=Msquare];
    }
`;

hpccWasm.graphvizSync().then(graphviz => {
    graphviz.layout(dot, "svg", "dot");
    require('./../../collect-data.js')
});


