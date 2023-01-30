const sourceMap = require("source-map");

var map = new sourceMap.SourceMapGenerator({
    file: "./source-mapped.js",
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