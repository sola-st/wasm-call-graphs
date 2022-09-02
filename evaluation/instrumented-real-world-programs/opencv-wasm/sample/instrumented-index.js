global.Wasabi = require("/home/michelle/Documents/sa-for-wasm/wasabi/lib/wasm/tests/callgraph-eval/test-suite/opencv-wasm/sample/node_modules/opencv-wasm/opencv.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const fs = require("fs");
const { cv, cvTranslateError } = require('opencv-wasm');

let mat = cv.matFromArray(2, 3, cv.CV_8UC1, [1, 2, 3, 4, 5, 6]);
console.log('cols =', mat.cols, '; rows =', mat.rows);
console.log(mat.data8S);

cv.transpose(mat, mat);
console.log('cols =', mat.cols, '; rows =', mat.rows);
console.log(mat.data8S);


require('./../../collect-data.js')
