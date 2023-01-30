const sourceMap = require("source-map");

var rawSourceMap = {
    version: 3,
    file: 'min.js',
    names: ['bar', 'baz', 'n'],
    sources: ['one.js', 'two.js'],
    sourceRoot: 'http://example.com/www/js/',
    mappings: 'CAAC,IAAI,IAAM,SAAUA,GAClB,OAAOC,IAAID;CCDb,IAAI,IAAM,SAAUE,GAClB,OAAOA'
  };
  
  
(async () => {
    var smc = new sourceMap.SourceMapConsumer(rawSourceMap);
    smc.then((value) => {
        console.log(value);
        console.log(value.sources);     
        console.log(value.originalPositionFor({
            line: 2,
            column: 28
        }));
        console.log(value.generatedPositionFor({
            source: 'http://example.com/www/js/two.js',
            line: 2,
            column: 10
        }))
    })
})();
