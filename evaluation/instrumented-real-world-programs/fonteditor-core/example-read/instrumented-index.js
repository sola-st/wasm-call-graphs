global.Wasabi = require("./node_modules/fonteditor-core/woff2/woff2.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const {Font, woff2} = require('fonteditor-core');
const fs = require('fs')

woff2.init().then(() => {
    // read woff2
    const font =  Font.create(Font.buffer, {
      type: 'woff2'
    });
    const fontObject = font.get();
    console.log(Object.keys(fontObject));
    require('./../../collect-data.js')
});

