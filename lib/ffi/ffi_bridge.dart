// Dart imports:
import 'dart:ffi';
import 'dart:io';

// Package imports:
import 'package:ffi/ffi.dart';

typedef SimpleFunction = Int16 Function(Pointer<Utf8> text);
typedef SimpleFunctionDart = int Function(Pointer<Utf8> text);

class FFIBridge {
  late SimpleFunctionDart _getLength;

  FFIBridge() {
    final dl = Platform.isAndroid
        ? DynamicLibrary.open('libcalc.so')
        : DynamicLibrary.process();

    _getLength =
        dl.lookupFunction<SimpleFunction, SimpleFunctionDart>('get_length');
  }

  int getLength(String text) {
    var textUtf8 = text.toNativeUtf8();

    return _getLength(textUtf8);
  }
}
