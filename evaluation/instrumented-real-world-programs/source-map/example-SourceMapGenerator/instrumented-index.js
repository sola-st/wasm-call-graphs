global.Wasabi = require("./../mappings.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const sourceMap = require("source-map");

var map = new sourceMap.SourceMapGenerator({
    file: "source-mapped.js",
  });
  
  map.addMapping({
    generated: {
      line: 10,
      column: 35,
    },
    source: "foo.js",
    original: {
      line: 33,
      column: 2,
    },
    name: "christopher",
  });
  
  
  
  console.log(map.toString());
  
  
  require('./../../collect-data.js')
