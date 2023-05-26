global.Wasabi = require("./../opusscript_native_wasm.wasabi.js");
let analysis = require("./../../analysis.js");

let filename = `${__filename}`
filename = filename.split("/").slice(-3)
global.lib_name = filename[0]
global.test_name = filename[1]

var OpusScript = require("opusscript");

// 48kHz sampling rate, 20ms frame duration, stereo audio (2 channels)
var samplingRate = 48000;
var frameDuration = 20;
var channels = 2;

// Optimize encoding for audio. Available applications are VOIP, AUDIO, and RESTRICTED_LOWDELAY
var encoder = new OpusScript(samplingRate, channels, OpusScript.Application.VOIP);

var frameSize = samplingRate * frameDuration / 1000;

// Get PCM data from somewhere and encode it into opus
var pcmData = Int16Array.from([0, 256, 512, 256, 0, -256, -512]);
var encodedPacket = encoder.encode(pcmData, frameSize);

// Decode the opus packet back into PCM
var decodedPacket = encoder.decode(encodedPacket);

// Delete the encoder when finished with it (Emscripten does not automatically call C++ object destructors)
encoder.delete();
require('./../../collect-data.js')
