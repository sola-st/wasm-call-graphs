global.Wasabi = require("./../sql-wasm.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

const fs = require("fs");
const initSqlJs = require('./node_modules/sql.js/dist/sql-wasm.js');

console.log(`Filename is ${__filename}`);
initSqlJs().then(function (SQL) {
    const db = new SQL.Database();

    let sqlstr = "CREATE TABLE hello (a int, b char); \
INSERT INTO hello VALUES (0, 'hello'); \
INSERT INTO hello VALUES (1, 'world');";

    db.run(sqlstr);
    const binaryArray = db.export();

    fs.writeFileSync("./db.sqlite", binaryArray)
    require('./../../collect-data.js')

});

