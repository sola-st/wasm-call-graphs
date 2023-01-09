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

});
