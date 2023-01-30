var OpusScript = require("opusscript");

// 48kHz sampling rate, 20ms frame duration, stereo audio (2 channels)
var samplingRate = 48000;
var frameDuration = 20;
var channels = 2;

// Optimize encoding for audio. Available applications are VOIP, AUDIO, and RESTRICTED_LOWDELAY
var encoder = new OpusScript(samplingRate, channels, OpusScript.Application.AUDIO);

var frameSize = samplingRate * frameDuration / 1000;

// Get PCM data from somewhere and encode it into opus
var pcmData = Int16Array.from([0, 256, 512, 256, 0, -256, -512]);
var encodedPacket = encoder.encode(pcmData, frameSize);

// Decode the opus packet back into PCM
var decodedPacket = encoder.decode(encodedPacket);

// Delete the encoder when finished with it (Emscripten does not automatically call C++ object destructors)
encoder.delete();
