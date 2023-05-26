global.Wasabi = require("./../woff2.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const {Font, woff2} = require('fonteditor-core');
const fs = require('fs')

const convertFromVecToUint8arr=(vec)=>{
  let ttfarr = []
  for (let i = 0; i < vec.size(); i++) {
      ttfarr.push(vec.get(i))

  }
  return new Uint8Array(ttfarr)
}

woff2.init().then(() => {
    const font =  Font.create(Font.buffer, {
      type: 'woff2'
    });
    

    // to base64 str
    font.toBase64({
      // support ttf, woff, woff2, eot, svg
      type: 'ttf'
    });
    
    // optimize glyphs
    font.optimize()

    // compound2simple
    font.compound2simple()

    // sort glyphs
    font.sort()

    // find glyphs
    console.log(font.find({
    unicode: [65]
    }));

    console.log(font.find({
      filter: function (glyf) {
        return glyf.name == 'icon'
    }}));

    // merge another font object
    const font_2 =  Font.create(Font.buffer, {
      type: 'woff2'
    });
    font.merge(font_2, {
      scale: 1
    });
    
    require('./../../collect-data.js')

});

