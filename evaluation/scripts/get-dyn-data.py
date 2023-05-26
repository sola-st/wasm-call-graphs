import os, sys
import json 

# This script reads the Wasabi output files and saves the data in data.json by updating it  

TEST_SUITE_DATA_JSON_PATH = "./../../data/real-world-processed-data.json"
TEST_SUITE_PATH = "./../../data/real-world-programs-raw-data" 

args = sys.argv[1:]
if len(args)>0: 
	print("Usage: get-dyn-data.py")
	print("This script reads the Wasabi output files and saves the data in data.json by updating it.")
	sys.exit()

def get_file_data(path): 
	return [line.strip() for line in open(path, "r").readlines()]	
				
dyn_data = dict() # {library -> {test_name -> {reachable ->, lowerbound -> }}}

# Extract the reachable exports and reachable functions sets from the data 
for root, _, files in os.walk(TEST_SUITE_PATH):
	for f in files: 
		
		if "exports" in f or "lowerbound" in f: 
			
			lib, _, test = root.split("/")[-3:]
			
			if lib not in dyn_data.keys(): 
				dyn_data[lib] = {}
				dyn_data[lib]["tests"] = {}
			if test not in dyn_data[lib]["tests"].keys():
				dyn_data[lib]["tests"][test] = {} 
			
			if "exports" in f:
				dyn_data[lib]["tests"][test]["reachable_exports"] = set(get_file_data(os.path.join(root, f)))
				 			
			if "lowerbound" in f: 
				funcs = set(get_file_data(os.path.join(root, f)))
				funcs = [int(x) for x in funcs]
				dyn_data[lib]["tests"][test]["reachable_functions"] = funcs 


# Union all the reachable functions sets together to get the total_reachable functions of the library 
for lib in dyn_data: 
	total_reachable = set()

	for test in dyn_data[lib]["tests"]:
		total_reachable.update(dyn_data[lib]["tests"][test]["reachable_functions"])

	dyn_data[lib]["total_reachable_funcs"] = total_reachable


# Update the data.json file 
data = json.load(open(TEST_SUITE_DATA_JSON_PATH))
print("Updating data.json with data extracted by Wasabi for each test case...")
for lib in dyn_data.keys(): 	 
	
	lib_obj = [l for l in data['library_data'] if l['library_name'] == lib][0]
		
	for test in dyn_data[lib]["tests"]: 
		
		#print(lib, test)
		#print(dyn_data[lib]["tests"])
		#print(lib_obj)

		ind_test = [i for i in range(len(lib_obj["tests"])) if lib_obj["tests"][i]['test_name'] == test][0]
		
		lib_obj["tests"][ind_test]["dyn_reachable_exports"] = {
			"names": list(dyn_data[lib]["tests"][test]["reachable_exports"]), 
			"count": len(dyn_data[lib]["tests"][test]["reachable_exports"])
		}
		
		lib_obj["tests"][ind_test]["dyn_reachable_functions"] = {
			"names": list(dyn_data[lib]["tests"][test]["reachable_functions"]), 
			"count": len(dyn_data[lib]["tests"][test]["reachable_functions"])
		}
		
		lib_obj["dyn_total_reachable_functions"] = {
			"names" : list(dyn_data[lib]["total_reachable_funcs"]), 
			"count" : len(dyn_data[lib]["total_reachable_funcs"])
		}	
					
json.dump(data, open(TEST_SUITE_DATA_JSON_PATH, "w"), indent=2)



