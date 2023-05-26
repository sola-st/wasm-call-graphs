#!/bin/bash

cd tools

# Clone the Wassail repo 
git clone https://github.com/acieroid/wassail.git
cd wassail 
git reset --hard a45f6e0376ccab15b6f87a85333b4ec0b1e234d6
cd ..

# Clone the twiggy repo and make changes 
# We do not use the standard twiggy tool and instead make some changes to dump the internal IR.
# The changes are documented below. 
# - Clone Twiggy repo 
# - Build using: cargo build --all --exclude twiggy-wasm-api
# - The twiggy executable can be found at wasm-call-graphs/tools/twiggy/target/debug
# - In twiggy/analyze/analyses/dominators/emit.rs, add the following code snippets:
# At the start of the emit_text function:
#   use std::any::Any;
#   use ir::Id;
# At the end of the emit_text function:
#     for item in items.iter() {
#         print!("{:?} | {} | ", item.id(), item.name());
#         let mut neighbours : Vec<Id> = Vec::new();
#         items.neighbors(item.id()).for_each(|n| neighbours.push(n)); 
#         let neighbours = (!neighbours.is_empty()).then(|| neighbours);
#         println!("{:?}", neighbours);
#     }
# - Rebuild twiggy 
git clone https://github.com/rustwasm/twiggy.git
cd twiggy 
git reset --hard ae7ef0d6332a663f9d958fba4be3ec5c47274537
cd ..
X="use std::any::Any;\nuse ir::Id;"
sed -i "19i $X" ./twiggy/analyze/analyses/dominators/emit.rs
X="for item in items.iter() {\n\tprint!(\"{:?} | {} | \", item.id(), item.name());\n\tlet mut neighbours : Vec<Id> = Vec::new();\n\titems.neighbors(item.id()).for_each(|n| neighbours.push(n));\n\tlet neighbours = (\!neighbours.is_empty()).then(|| neighbours);\n\tprintln!(\"{:?}\", neighbours);\n\t}\n"
sed -i "92i $X" ./twiggy/analyze/analyses/dominators/emit.rs
sed -i '101d' ./twiggy/analyze/analyses/dominators/emit.rs

