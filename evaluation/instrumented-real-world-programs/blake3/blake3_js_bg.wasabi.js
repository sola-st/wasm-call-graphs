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

Wasabi.module.info = {"functions":[{"type":"ii|","import":["__wbindgen_placeholder__","__wbindgen_throw"],"export":[],"locals":"","instrCount":0},{"type":"i|i","import":null,"export":[],"locals":"iiiiiiiiI","instrCount":2432},{"type":"iiiiIi|","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii","instrCount":2157},{"type":"iiiIi|","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii","instrCount":2113},{"type":"iii|","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiiII","instrCount":961},{"type":"ii|","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiIIIIII","instrCount":665},{"type":"i|","import":null,"export":[],"locals":"iiiii","instrCount":532},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":511},{"type":"iii|","import":null,"export":[],"locals":"iiiiiiIII","instrCount":419},{"type":"iI|","import":null,"export":[],"locals":"iiiiiiiiiiiiiiiiiiIII","instrCount":424},{"type":"iiiIiii|i","import":null,"export":[],"locals":"iiiiii","instrCount":354},{"type":"ii|","import":null,"export":[],"locals":"iiii","instrCount":402},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiii","instrCount":326},{"type":"iii|i","import":null,"export":[],"locals":"iiiiiiiiii","instrCount":369},{"type":"ii|i","import":null,"export":[],"locals":"iiiiiii","instrCount":339},{"type":"iiiIiii|i","import":null,"export":[],"locals":"iiiiiiiI","instrCount":258},{"type":"iiiIiii|","import":null,"export":[],"locals":"iiiiiiIII","instrCount":243},{"type":"ii|i","import":null,"export":[],"locals":"iiii","instrCount":232},{"type":"ii|i","import":null,"export":[],"locals":"iiiii","instrCount":199},{"type":"iiiiIi|","import":null,"export":[],"locals":"iiiiiiii","instrCount":195},{"type":"ii|","import":null,"export":[],"locals":"iiii","instrCount":192},{"type":"iii|i","import":null,"export":[],"locals":"iii","instrCount":183},{"type":"iiiiii|i","import":null,"export":[],"locals":"iii","instrCount":162},{"type":"Ii|i","import":null,"export":[],"locals":"iiiiiI","instrCount":159},{"type":"ii|","import":null,"export":[],"locals":"iiii","instrCount":145},{"type":"iiiiii|","import":null,"export":[],"locals":"iiiiIIII","instrCount":115},{"type":"iii|","import":null,"export":[],"locals":"iii","instrCount":118},{"type":"ii|i","import":null,"export":["create_keyed"],"locals":"iiii","instrCount":106},{"type":"ii|","import":null,"export":[],"locals":"iiiiiii","instrCount":110},{"type":"ii|","import":null,"export":[],"locals":"iiii","instrCount":104},{"type":"iii|","import":null,"export":[],"locals":"ii","instrCount":114},{"type":"iii|","import":null,"export":[],"locals":"iiiii","instrCount":98},{"type":"i|i","import":null,"export":["blake3hash_reader"],"locals":"i","instrCount":70},{"type":"i|","import":null,"export":[],"locals":"IIII","instrCount":59},{"type":"ii|i","import":null,"export":["create_derive"],"locals":"i","instrCount":54},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":58},{"type":"iii|","import":null,"export":[],"locals":"i","instrCount":50},{"type":"iii|","import":null,"export":[],"locals":"i","instrCount":50},{"type":"iii|","import":null,"export":[],"locals":"i","instrCount":50},{"type":"ii|i","import":null,"export":[],"locals":"ii","instrCount":42},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":50},{"type":"|i","import":null,"export":["create_hasher"],"locals":"ii","instrCount":47},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":42},{"type":"iiii|i","import":null,"export":[],"locals":"","instrCount":40},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":45},{"type":"iiii|","import":null,"export":["hash"],"locals":"i","instrCount":41},{"type":"iii|","import":null,"export":["blake3hash_digest"],"locals":"i","instrCount":42},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":36},{"type":"iii|","import":null,"export":["blake3hash_update"],"locals":"","instrCount":31},{"type":"iii|","import":null,"export":[],"locals":"i","instrCount":32},{"type":"iii|","import":null,"export":["hashreader_set_position"],"locals":"iI","instrCount":41},{"type":"i|","import":null,"export":[],"locals":"iii","instrCount":40},{"type":"iii|","import":null,"export":["hashreader_fill"],"locals":"","instrCount":26},{"type":"iii|i","import":null,"export":[],"locals":"i","instrCount":26},{"type":"i|i","import":null,"export":["__wbindgen_malloc"],"locals":"","instrCount":26},{"type":"i|","import":null,"export":[],"locals":"i","instrCount":21},{"type":"i|","import":null,"export":["__wbg_blake3hash_free","__wbg_hashreader_free"],"locals":"","instrCount":19},{"type":"i|","import":null,"export":[],"locals":"i","instrCount":21},{"type":"ii|","import":null,"export":[],"locals":"i","instrCount":21},{"type":"ii|i","import":null,"export":[],"locals":"i","instrCount":21},{"type":"iii|i","import":null,"export":["__wbindgen_realloc"],"locals":"","instrCount":18},{"type":"i|","import":null,"export":[],"locals":"i","instrCount":16},{"type":"i|","import":null,"export":[],"locals":"i","instrCount":16},{"type":"iiii|i","import":null,"export":[],"locals":"","instrCount":6},{"type":"ii|","import":null,"export":["__wbindgen_free"],"locals":"","instrCount":6},{"type":"iii|i","import":null,"export":[],"locals":"","instrCount":9},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":8},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":14},{"type":"ii|","import":null,"export":[],"locals":"","instrCount":7},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":7},{"type":"|","import":null,"export":[],"locals":"","instrCount":6},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":8},{"type":"ii|i","import":null,"export":[],"locals":"","instrCount":5},{"type":"|","import":null,"export":[],"locals":"","instrCount":5},{"type":"|","import":null,"export":[],"locals":"","instrCount":5},{"type":"ii|","import":null,"export":[],"locals":"","instrCount":5},{"type":"ii|","import":null,"export":[],"locals":"","instrCount":11},{"type":"i|I","import":null,"export":[],"locals":"","instrCount":2},{"type":"i|I","import":null,"export":[],"locals":"","instrCount":2},{"type":"i|","import":null,"export":[],"locals":"","instrCount":2},{"type":"ii|","import":null,"export":[],"locals":"","instrCount":2}],"globals":"i","start":null,"tableExportName":"__wasabi_table","brTables":[]};

Wasabi.module.lowlevelHooks = {
    "begin_function": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "function");
    },
    "i32_store": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store", {addr, offset, align}, value);
    },
    "begin_block": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "block");
    },
    "begin_if": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "if");
    },
    "i32_store8": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store8", {addr, offset, align}, value);
    },
    "i64_store": function (func, instr, offset, align, addr, value_low, value_high) {
        Wasabi.analysis.store({func, instr}, "i64.store", {addr, offset, align}, new Long(value_low, value_high));
    },
    "begin_loop": function (func, instr, ) {
        Wasabi.analysis.begin({func, instr}, "loop");
    },
    "call_ii": function (func, instr, targetFunc, arg0, arg1) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1]);
    },
    "call_indirect_iii": function (func, instr, tableIndex, arg0, arg1, arg2) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1, arg2], tableIndex);
    },
    "call_post_i": function (func, instr, result0) {
        Wasabi.analysis.call_post({func, instr}, [result0]);
    },
    "call_post": function (func, instr, ) {
        Wasabi.analysis.call_post({func, instr}, []);
    },
    "call_iiiIiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3_low, arg3_high, arg4, arg5, arg6) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, new Long(arg3_low, arg3_high), arg4, arg5, arg6]);
    },
    "call_i": function (func, instr, targetFunc, arg0) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0]);
    },
    "call_iii": function (func, instr, targetFunc, arg0, arg1, arg2) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2]);
    },
    "begin_else": function (func, instr, ifInstr) {
        Wasabi.analysis.begin({func, instr}, "else", {func, instr: ifInstr});
    },
    "call_iiiiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4, arg5) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, arg4, arg5]);
    },
    "call_iiiIi": function (func, instr, targetFunc, arg0, arg1, arg2, arg3_low, arg3_high, arg4) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, new Long(arg3_low, arg3_high), arg4]);
    },
    "i32_store16": function (func, instr, offset, align, addr, value) {
        Wasabi.analysis.store({func, instr}, "i32.store16", {addr, offset, align}, value);
    },
    "call_indirect_ii": function (func, instr, tableIndex, arg0, arg1) {
        Wasabi.analysis.call_pre({func, instr}, Wasabi.resolveTableIdx(tableIndex), [arg0, arg1], tableIndex);
    },
    "call_iiiiIi": function (func, instr, targetFunc, arg0, arg1, arg2, arg3, arg4_low, arg4_high, arg5) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3, new Long(arg4_low, arg4_high), arg5]);
    },
    "call": function (func, instr, targetFunc) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, []);
    },
    "call_iiii": function (func, instr, targetFunc, arg0, arg1, arg2, arg3) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, arg1, arg2, arg3]);
    },
    "call_iI": function (func, instr, targetFunc, arg0, arg1_low, arg1_high) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [arg0, new Long(arg1_low, arg1_high)]);
    },
    "call_Ii": function (func, instr, targetFunc, arg0_low, arg0_high, arg1) {
        Wasabi.analysis.call_pre({func, instr}, targetFunc, [new Long(arg0_low, arg0_high), arg1]);
    },
};

module.exports = Wasabi;
