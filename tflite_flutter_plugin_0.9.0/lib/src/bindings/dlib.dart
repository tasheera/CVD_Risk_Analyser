import 'dart:ffi';
import 'dart:io';

const Set<String> _supported = {'linux', 'mac', 'win'};

String get binaryName {
  String os, ext;
  if (Platform.isLinux) {
    os = 'linux';
    ext = 'so';
  } else if (Platform.isMacOS) {
    os = 'mac';
    ext = 'so';
  } else if (Platform.isWindows) {
    os = 'win';
    ext = 'dll';
  } else {
    throw Exception('Unsupported platform!');
  }

  if (!_supported.contains(os)) {
    throw UnsupportedError('Unsupported platform: $os!');
  }

  return 'tflite_flutter_plugin_0.9.0\\blobs\\libtensorflowlite_c$os.$ext';
}

/// TensorFlowLite C library.
// ignore: missing_return
DynamicLibrary tflitelib = () {
  if (Platform.isAndroid) {
    return DynamicLibrary.open("libtensorflowlite_c.so");
  } else if (Platform.isIOS) {
    return DynamicLibrary.process();
  } else {
    return DynamicLibrary.open("tflite_flutter_plugin_0.9.0\\blobs\\libtensorflowlite_c-win.dll");
  }
}();
