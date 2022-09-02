global.Wasabi = require("/home/michelle/Documents/sa-for-wasm/wasabi/lib/wasm/tests/callgraph-eval/test-suite/blake3/sample/node_modules/blake3-wasm/dist/wasm/nodejs/blake3_js_bg.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const blake3 = require('blake3-wasm');

blake3.hash('foo'); // => Buffer

require('./../../collect-data.js')
