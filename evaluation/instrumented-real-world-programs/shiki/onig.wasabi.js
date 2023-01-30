/*
* Generated by Wasabi. DO NOT EDIT.
* Contains:
*   - independent of program-to-instrument: long.js dependency, Wasabi loader and runtime
*   - generated from program-to-instrument: static information and low-level hooks
*/

const Long = require('./long.js');

/*
 * Wasabi loader (monkey-patches WebAssembly.instantiate()) and runtime (e.g., for resolving call_indirect).
 */

let Wasabi = {
    HOOK_NAMES: [
        "start",
        "if_",
        "br",
        "br_if",
        "br_table",
        "begin",
        "end",
        "nop",
        "unreachable",
        "drop",
        "select",
        "call_pre",
        "call_post",
        "return_",
        "const_",
        "unary",
        "binary",
        "load",
        "store",
        "memory_size",
        "memory_grow",
        "local",
        "global"
    ],

    // map a table index to a function index
    resolveTableIdx: function (tableIdx) {
        if (Wasabi.module.exports === undefined || Wasabi.module.table === undefined) {
            console.warn("cannot resolve table index without exports and table (possible reason: exports and table are not available during Wasm start function)");
            return undefined;
        }

        // FIXME even though MDN says "name property is the toString() result of the function's index in the wasm module"
        // Firefox seems to give out different names :/ -> bug report, either documentation or implementation is wrong
        // see https://developer.mozilla.org/en-US/docs/WebAssembly/Exported_functions

        // dirty HACK subtract the "name index" of the first function, should correct for the wrong property
        // const firstFunctionIdx = parseInt(Wasabi.module.exports[Wasabi.module.info.firstFunctionExportName].name);
        // const functionIdx = parseInt(Wasabi.module.table.get(tableIdx).name) - firstFunctionIdx;
        const functionIdx = parseInt(Wasabi.module.table.get(tableIdx).name);

        return (functionIdx >= Wasabi.module.info.functions.length) ? 0 : functionIdx;
    },

    // call end hooks for all "intermediate" or "implicitly ended blocks" of a branch table
    endBrTableBlocks: function(brTablesInfoIdx, brTableIdx, func) {
        const table = Wasabi.module.info.brTables[brTablesInfoIdx].table;
        const default_ = Wasabi.module.info.brTables[brTablesInfoIdx].default;
        const target = (table[brTableIdx] === undefined) ? default_ : table[brTableIdx];

        // NOTE this is a JavaScript impl of the Wasabi to_end_hook_args() function in Rust
        for (const block of target.ends) {
            const [type, begin, end, begin_if] = block;
            Wasabi.analysis.end(
                {func, instr: end},
                type,
                {func, instr: begin},
                // not undefined only for block type "else"
                (begin_if === undefined) ? undefined : {func, instr: begin_if});
        }
    },

    loc2func: function(loc) {
        // TODO
    },

    loc2instr: function(loc) {
        // TODO
    },

    functionType: function(func) {
        // TODO
    },

    module: {
        // filled at instrumentation time
        // TODO flatten info into module itself, by using Object.assign in generated code
        info: undefined, lowlevelHooks: undefined,
        // filled after instantiation
        exports: undefined, table: undefined,
    },

    // filled by user or with empty hooks (as fallback) before instantiation
    analysis: {}
};

// monkey-patch WebAssembly.instantiate() and .instantiateStreaming() to add Wasabi
{
    // NOTE even though nothing is done with their arguments, we should provide them because it speeds up in Firefox
    // maybe because this way the JIT can inline the functions???
    const defaultHooks = {
        start(location) {},
        nop(location) {},
        unreachable(location) {},
        if_(location, condition) {},
        br(location, target) {},
        br_if(location, conditionalTarget, condition) {},
        br_table(location, table, defaultTarget, tableIdx) {},
        begin(location, type) {},
        end(location, type, beginLocation, ifLocation) {},
        drop(location, value) {},
        select(location, cond, first, second) {},
        call_pre(location, targetFunc, args, indirectTableIdx) {},
        call_post(location, values) {},
        return_(location, values) {},
        const_(location, op, value) {},
        unary(location, op, input, result) {},
        binary(location, op, first, second, result) {},
        load(location, op, memarg, value) {},
        store(location, op, memarg, value) {},
        memory_size(location, currentSizePages) {},
        memory_grow(location, byPages, previousSizePages) {},
        local(location, op, localIndex, value) {},
        global(location, op, globalIndex, value) {},
    }

    const assertInstantiationPrecondition = function() {
        if (Wasabi.module.info === undefined || Wasabi.module.lowlevelHooks === undefined) {
            throw "missing static info or low-level hooks, did you include the Wasabi-generated JavaScript file?";
        }
    }

    const importObjectWithHooks = function(importObject) {
        for (const hook of Wasabi.HOOK_NAMES) {
            if (Wasabi.analysis[hook] === undefined) {
                console.debug(hook, "hook not provided by Wasabi.analysis, add empty function as fallback");
                Wasabi.analysis[hook] = defaultHooks[hook];
            }
        }
        let importObjectWithHooks = importObject || {};
        importObjectWithHooks.__wasabi_hooks = Wasabi.module.lowlevelHooks;
        return importObjectWithHooks;
    }

    const wireInstanceExports = function(instance) {
        Wasabi.module.exports = instance.exports;
        Wasabi.module.table = instance.exports[Wasabi.module.info.tableExportName];
    }

    const oldInstantiate = WebAssembly.instantiate;
    WebAssembly.instantiate = (sourceBuffer, importObject) => {
        assertInstantiationPrecondition();
        const result = oldInstantiate(sourceBuffer, importObjectWithHooks(importObject));
        // as soon as instance is available, save exports and table
        result.then(({module, instance}) => {
            wireInstanceExports(instance);
        });
        return result;
    };

    // just fall-back to regular instantiation since Wasabi doesn't support streaming instrumentation (yet) anyway
    const oldInstantiateStreaming = WebAssembly.instantiateStreaming;
    WebAssembly.instantiateStreaming = async (source, importObject) => {
        let response = await source;
        let buffer = await response.arrayBuffer();
        return WebAssembly.instantiate(buffer, importObject);
    };

    const oldInstance = WebAssembly.Instance;
    const newInstance = function(module, importObject) {
        assertInstantiationPrecondition();
        const instance = new oldInstance(module, importObjectWithHooks(importObject));
        wireInstanceExports(instance);
        return instance;
    };
    WebAssembly.Instance = newInstance;
}

Wasabi.module.info = {"functions":[{"type":"iii|","import":["env","emscripten_memcpy_big"],"export":[],"locals":"","instrCount":0},{"type":"|F","import":["env","emscripten_get_now"],"export":[],"locals":"","instrCount":0},{"type":"iiii|i","import":["wasi_snapshot_preview1","fd_write"],"export":[],"locals":"","instrCount":0},{"type":"i|i","import":["env","emscripten_resize_heap"],"export":[],"locals":"","instrCount":0},{"type":"|","import":null,"export":["__wasm_call_ctors"],"locals":"","instrCount":7},{"type":"i|","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|i","import":null,"export":[],"locals":"iii","instrCount":53},{"type":"i|i","import":null,"export":[],"locals":"iiiiii","instrCount":124},{"type":"ii|i","import":null,"export":[],"locals":"iii","instrCount":65},{"type":"i|i","import":null,"export":[],"locals":"iiiiiii","instrCount":130},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":16},{"type":"iii|i","import":null,"export":[],"locals":"ii","instrCount":54},{"type":"iiiiiiiii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":650},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":56},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":27},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":4},{"type":"i|","import":null,"export":[],"locals":"","instrCount":8},{"type":"i|","import":null,"export":[],"locals":"ii","instrCount":151},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiI","instrCount":166},{"type":"iii|i","import":null,"export":[],"locals":"iiiii","instrCount":138},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":17},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":17},{"type":"ii|i","import":null,"export":[],"locals":"ii","instrCount":30},{"type":"i|i","import":null,"export":[],"locals":"iiiii","instrCount":328},{"type":"iiii|i","import":null,"export":[],"locals":"iiiii","instrCount":92},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiii","instrCount":509},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiii","instrCount":2823},{"type":"iiiiiii|i","import":null,"export":[],"locals":"iiiii","instrCount":215},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":16},{"type":"iii|","import":null,"export":[],"locals":"","instrCount":7},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":191},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiiiii","instrCount":345},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiii","instrCount":89},{"type":"iiiiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":110},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":63},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":316},{"type":"iiiiiiii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":381},{"type":"iiiiiiii|i","import":null,"export":[],"locals":"iiiiiiiiiii","instrCount":514},{"type":"iiii|i","import":null,"export":[],"locals":"ii","instrCount":73},{"type":"iiiiiii|i","import":null,"export":[],"locals":"iii","instrCount":207},{"type":"iiiiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiii","instrCount":5916},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":411},{"type":"iiiiii|i","import":null,"export":[],"locals":"iii","instrCount":155},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiiiiiiiiiiii","instrCount":1304},{"type":"i|i","import":null,"export":[],"locals":"iiii","instrCount":135},{"type":"iii|i","import":null,"export":[],"locals":"ii","instrCount":65},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiii","instrCount":2284},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiiii","instrCount":481},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":1383},{"type":"i|","import":null,"export":[],"locals":"","instrCount":8},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":43},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiiiiii","instrCount":1231},{"type":"ii|","import":null,"export":[],"locals":"iii","instrCount":57},{"type":"iiiiiiiii|i","import":null,"export":[],"locals":"iiii","instrCount":276},{"type":"iiiiii|i","import":null,"export":[],"locals":"ii","instrCount":253},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":128},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiiiiii","instrCount":788},{"type":"iiiiiiiii|i","import":null,"export":[],"locals":"iiii","instrCount":314},{"type":"ii|i","import":null,"export":[],"locals":"iiiii","instrCount":93},{"type":"iiiii|i","import":null,"export":[],"locals":"iiii","instrCount":158},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiii","instrCount":148},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":28},{"type":"iii|i","import":null,"export":[],"locals":"i","instrCount":49},{"type":"i|","import":null,"export":[],"locals":"iiiiiiii","instrCount":324},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiiii","instrCount":1568},{"type":"iii|","import":null,"export":[],"locals":"iiiiii","instrCount":224},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiii","instrCount":7880},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":208},{"type":"i|i","import":null,"export":[],"locals":"ii","instrCount":97},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":137},{"type":"iii|i","import":null,"export":[],"locals":"iiiiii","instrCount":346},{"type":"i|","import":null,"export":[],"locals":"i","instrCount":83},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":205},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":112},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":179},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiii","instrCount":3753},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":71},{"type":"iii|","import":null,"export":[],"locals":"i","instrCount":120},{"type":"ii|","import":null,"export":[],"locals":"iiiiiii","instrCount":170},{"type":"ii|i","import":null,"export":[],"locals":"iiiiii","instrCount":711},{"type":"iiii|i","import":null,"export":[],"locals":"iiiii","instrCount":217},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":98},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":544},{"type":"ii|i","import":null,"export":[],"locals":"iiiiii","instrCount":59},{"type":"iii|i","import":null,"export":[],"locals":"iiiiii","instrCount":119},{"type":"iii|i","import":null,"export":[],"locals":"ii","instrCount":194},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiiii","instrCount":240},{"type":"i|","import":null,"export":[],"locals":"ii","instrCount":131},{"type":"i|i","import":null,"export":[],"locals":"iii","instrCount":140},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":249},{"type":"ii|","import":null,"export":[],"locals":"iii","instrCount":216},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":98},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":194},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiiiii","instrCount":969},{"type":"iii|i","import":null,"export":[],"locals":"ii","instrCount":122},{"type":"ii|i","import":null,"export":[],"locals":"iiiii","instrCount":299},{"type":"i|i","import":null,"export":[],"locals":"ii","instrCount":113},{"type":"i|i","import":null,"export":[],"locals":"ii","instrCount":120},{"type":"iii|","import":null,"export":[],"locals":"iiiiiii","instrCount":581},{"type":"iii|","import":null,"export":[],"locals":"iii","instrCount":217},{"type":"ii|i","import":null,"export":[],"locals":"iiiii","instrCount":315},{"type":"iii|","import":null,"export":[],"locals":"iiiii","instrCount":160},{"type":"i|","import":null,"export":[],"locals":"iiiiii","instrCount":147},{"type":"ii|i","import":null,"export":[],"locals":"iii","instrCount":77},{"type":"iiiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii","instrCount":9725},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":256},{"type":"iiiiii|i","import":null,"export":[],"locals":"iiiiiiiii","instrCount":201},{"type":"iiiiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiii","instrCount":529},{"type":"iiiiiiiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":1125},{"type":"iiiiiii|i","import":null,"export":[],"locals":"ii","instrCount":75},{"type":"iiiiiiii|i","import":null,"export":[],"locals":"iiiiiiii","instrCount":251},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":47},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":51},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiiiI","instrCount":188},{"type":"ii|i","import":null,"export":[],"locals":"iiiiI","instrCount":314},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":424},{"type":"iii|i","import":null,"export":[],"locals":"i","instrCount":32},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":19},{"type":"iii|i","import":null,"export":[],"locals":"i","instrCount":15},{"type":"iiii|i","import":null,"export":[],"locals":"","instrCount":33},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":55},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":59},{"type":"iiii|i","import":null,"export":[],"locals":"","instrCount":38},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":16},{"type":"iiii|i","import":null,"export":[],"locals":"","instrCount":16},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":3},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":7},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":5},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"iii|i","import":null,"export":[],"locals":"iiiiii","instrCount":106},{"type":"iiiii|i","import":null,"export":[],"locals":"i","instrCount":54},{"type":"iii|i","import":null,"export":[],"locals":"i","instrCount":23},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":34},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":22},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":326},{"type":"iiiiii|","import":null,"export":[],"locals":"iiiii","instrCount":608},{"type":"i|i","import":null,"export":[],"locals":"ii","instrCount":37},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":177},{"type":"i|","import":null,"export":[],"locals":"iii","instrCount":46},{"type":"iii|i","import":null,"export":[],"locals":"iiiii","instrCount":111},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiii","instrCount":235},{"type":"iii|","import":null,"export":[],"locals":"iiiii","instrCount":118},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":202},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":173},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":162},{"type":"i|i","import":null,"export":[],"locals":"iiii","instrCount":56},{"type":"iiiii|i","import":null,"export":[],"locals":"iiiii","instrCount":107},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":56},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiii","instrCount":339},{"type":"i|i","import":null,"export":[],"locals":"iii","instrCount":83},{"type":"i|i","import":null,"export":[],"locals":"iii","instrCount":71},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":18},{"type":"|i","import":null,"export":[],"locals":"iii","instrCount":189},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":8},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":121},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":27},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":102},{"type":"iiii|i","import":null,"export":[],"locals":"iii","instrCount":240},{"type":"iiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiii","instrCount":2060},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":38},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":28},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":86},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":256},{"type":"iii|","import":null,"export":[],"locals":"ii","instrCount":201},{"type":"iii|i","import":null,"export":[],"locals":"iiI","instrCount":185},{"type":"iiii|","import":null,"export":[],"locals":"i","instrCount":19},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":177},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":2},{"type":"iIi|I","import":null,"export":[],"locals":"","instrCount":2},{"type":"i|i","import":null,"export":[],"locals":"iii","instrCount":55},{"type":"i|i","import":null,"export":[],"locals":"i","instrCount":42},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":6},{"type":"|i","import":null,"export":["__errno_location"],"locals":"","instrCount":2},{"type":"Fi|F","import":null,"export":[],"locals":"iI","instrCount":52},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":100},{"type":"iiiii|i","import":null,"export":[],"locals":"iiii","instrCount":171},{"type":"iiiiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiI","instrCount":1335},{"type":"iii|","import":null,"export":[],"locals":"","instrCount":13},{"type":"i|i","import":null,"export":[],"locals":"iii","instrCount":52},{"type":"iiii|","import":null,"export":[],"locals":"","instrCount":271},{"type":"Ii|i","import":null,"export":[],"locals":"iiiI","instrCount":68},{"type":"iiiii|","import":null,"export":[],"locals":"i","instrCount":57},{"type":"iFiiii|i","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiFII","instrCount":1638},{"type":"ii|","import":null,"export":[],"locals":"IIIIIIii","instrCount":274},{"type":"iiii|i","import":null,"export":[],"locals":"ii","instrCount":74},{"type":"iii|i","import":null,"export":[],"locals":"iiii","instrCount":81},{"type":"i|i","import":null,"export":[],"locals":"","instrCount":11},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":146},{"type":"i|i","import":null,"export":["omalloc"],"locals":"","instrCount":3},{"type":"i|","import":null,"export":["ofree"],"locals":"","instrCount":3},{"type":"|i","import":null,"export":["getLastOnigError"],"locals":"iiiiiiiii","instrCount":350},{"type":"iiiiii|i","import":null,"export":[],"locals":"i","instrCount":115},{"type":"iii|i","import":null,"export":["createOnigScanner"],"locals":"iiiiiiiiiiiiiiiiiiiiiiiiii","instrCount":3249},{"type":"i|i","import":null,"export":["freeOnigScanner"],"locals":"iiii","instrCount":153},{"type":"iiiiii|i","import":null,"export":["findNextOnigScannerMatch"],"locals":"iiiiiiiiiiiiiiiiiii","instrCount":1945},{"type":"iiiiii|i","import":null,"export":["findNextOnigScannerMatchDbg"],"locals":"iiiiiiiiF","instrCount":216},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":20},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":20},{"type":"|","import":null,"export":[],"locals":"ii","instrCount":126},{"type":"i|i","import":null,"export":[],"locals":"iiiiiiiiiii","instrCount":2992},{"type":"i|","import":null,"export":[],"locals":"iiiiiii","instrCount":792},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiiiiiii","instrCount":542},{"type":"ii|","import":null,"export":[],"locals":"iiiiii","instrCount":758},{"type":"ii|i","import":null,"export":[],"locals":"iI","instrCount":51},{"type":"i|i","import":null,"export":[],"locals":"ii","instrCount":41},{"type":"|i","import":null,"export":["stackSave"],"locals":"","instrCount":2},{"type":"i|","import":null,"export":["stackRestore"],"locals":"","instrCount":3},{"type":"i|i","import":null,"export":["stackAlloc"],"locals":"","instrCount":9},{"type":"iiiii|i","import":null,"export":["dynCall_jiji"],"locals":"I","instrCount":19}],"globals":"ii","start":null,"tableExportName":"__indirect_function_table","brTables":[]};

Wasabi.module.lowlevelHooks = {
    "begin_function": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "function");
    },
    "begin_block": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "block");
    },
    "begin_loop": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "loop");
    },
    "begin_if": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "if");
    },
    "i32_store": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store", {addr, offset, align}, value);
    },
    "call_indirect_ii": function (func, instr, tableIndex, arg0, arg1) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1], tableIndex);
    },
    "call_post_i": function (func, instr, result0) {
        Wasabi.analysis.call_post({func, instr}, [result0]);
    },
    "call_i": function (func, instr, targetFunc, arg0) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0]);
    },
    "i32_store8": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store8", {addr, offset, align}, value);
    },
    "call_iii": function (func, instr, targetFunc, arg0, arg1, arg2) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2]);
    },
    "call_indirect_i": function (func, instr, tableIndex, arg0) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0], tableIndex);
    },
    "call_post": function (func, instr, ) {
        Wasabi.analysis.call_post({func, instr}, []);
    },
    "call_iiiiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4, arg5, arg6) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4, arg5, arg6]);
    },
    "call_ii": function (func, instr, targetFunc, arg0, arg1) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1]);
    },
    "call_iiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4]);
    },
    "call_iiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3]);
    },
    "begin_else": function (func, instr, ifInstr) {
        Wasabi.analysis.begin({func, instr}, "else", {func, instr: ifInstr});
    },
    "i64_store": function (func, instr, offset, align, addr, value_low, value_high) {
        Wasabi.analysis.store({func, instr}, "i64.store", {addr, offset, align}, new Long(value_low, value_high));
    },
    "call_iiiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4, arg5) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4, arg5]);
    },
    "call_iiiiiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7]);
    },
    "call_iiiiiiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8]);
    },
    "i64_store32": function (func, instr, offset, align, addr, value_low, value_high) {
        Wasabi.analysis.store({func, instr}, "i64.store32", {addr, offset, align}, new Long(value_low, value_high));
    },
    "call_Fi": function (func, instr, targetFunc, arg0, arg1) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1]);
    },
    "call_post_F": function (func, instr, result0) {
        Wasabi.analysis.call_post({func, instr}, [result0]);
    },
    "call_indirect_iii": function (func, instr, tableIndex, arg0, arg1, arg2) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1, arg2], tableIndex);
    },
    "call_indirect_iiii": function (func, instr, tableIndex, arg0, arg1, arg2, arg3) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1, arg2, arg3], tableIndex);
    },
    "i32_store16": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store16", {addr, offset, align}, value);
    },
    "call_Ii": function (func, instr, targetFunc, arg0_low, arg0_high, arg1) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [new Long(arg0_low, arg0_high), arg1]);
    },
    "call_indirect_iFiiii": function (func, instr, tableIndex, arg0, arg1, arg2, arg3, arg4, arg5) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1, arg2, arg3, arg4, arg5], tableIndex);
    },
    "i64_store8": function (func, instr, offset, align, addr, value_low, value_high) {
        Wasabi.analysis.store({func, instr}, "i64.store8", {addr, offset, align}, new Long(value_low, value_high));
    },
    "f64_store": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "f64.store", {addr, offset, align}, value);
    },
    "call": function (func, instr, targetFunc) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, []);
    },
    "call_indirect_iIi": function (func, instr, tableIndex, arg0, arg1_low, arg1_high, arg2) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, new Long(arg1_low, arg1_high), arg2], tableIndex);
    },
    "call_post_I": function (func, instr, result0_low, result0_high) {
        Wasabi.analysis.call_post({func, instr}, [new Long(result0_low, result0_high)]);
    },
    "call_indirect_iiiii": function (func, instr, tableIndex, arg0, arg1, arg2, arg3, arg4) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1, arg2, arg3, arg4], tableIndex);
    },
    "call_indirect": function (func, instr, tableIndex) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [], tableIndex);
    },
};

module.exports = Wasabi;
