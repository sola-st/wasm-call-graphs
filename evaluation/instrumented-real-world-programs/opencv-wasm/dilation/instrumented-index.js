global.Wasabi = require("/home/michelle/Documents/sa-for-wasm/wasabi/lib/wasm/tests/callgraph-eval/test-suite/opencv-wasm/dilation/node_modules/opencv-wasm/opencv.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const fs = require("fs");
const Jimp = require('jimp');
const { cv, cvTranslateError } = require('opencv-wasm');

(async () => {
    let jimpSrc = await Jimp.read(__dirname + '/input/image-sample-1.jpg');

    var src = cv.matFromImageData(jimpSrc.bitmap);

    let dst = new cv.Mat();
    let M = cv.Mat.ones(5, 5, cv.CV_8U);
    let anchor = new cv.Point(-1, -1);
    cv.dilate(src, dst, M, anchor, 1, cv.BORDER_CONSTANT, cv.morphologyDefaultBorderValue());

    new Jimp({
        width: dst.cols,
        height: dst.rows,
        data: Buffer.from(dst.data)
    })
        .write(__dirname + '/test-output/dilation.png');
        
    })();

require('./../../collect-data.js')
