global.Wasabi = require("./../blake3_js_bg.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const blake3 = require('blake3-wasm');

const hash1 = blake3.hash('foo', 16); 

let key = blake3.hash('foo');
const hash2 = blake3.keyedHash(key, "some string"); 

require('./../../collect-data.js')
