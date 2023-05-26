global.Wasabi = require("./../woff2.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const {Font, woff2} = require('fonteditor-core');
const fs = require('fs')

woff2.init().then(() => {
    const font =  Font.create(Font.buffer, {
      type: 'woff2'
    });    

    // write woff2
    const buffer = font.write({type: 'woff2', deflate: null});
    fs.writeFileSync('font.woff', buffer);

	require('./../../collect-data.js')
});

