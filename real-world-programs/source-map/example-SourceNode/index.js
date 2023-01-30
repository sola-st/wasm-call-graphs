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
        var node = new sourceMap.SourceNode(1, 2, "a.cpp", [
            new sourceMap.SourceNode(3, 4, "b.cpp", "extern int status;\n"),
            new sourceMap.SourceNode(5, 6, "c.cpp", "std::string* make_string(size_t n);\n"),
            new sourceMap.SourceNode(7, 8, "d.cpp", "int main(int argc, char** argv) {}\n"),
          ]);
        node.add(" + ");
        node.walk(function (code, loc) {
            console.log("WALK:", code, loc);
          });
        

        var node = sourceMap.SourceNode.fromStringWithSourceMap(
            "40 + 5", 
            value
        );
        node.walk(function (code, loc) {
        console.log("WALK:", code, loc);
        });
    })
})(); 
