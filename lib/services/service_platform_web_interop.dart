@JS('ClicksNamespace')
library interop;

// Dart imports:
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

// Package imports:
import 'package:js/js.dart';

// Project imports:
import 'package:app_integrations/consts/channels.dart';
import 'package:app_integrations/consts/keys.dart';

@JS('JsInteropManager')
class _JsInteropManager {
  external LabelElement get labelElement;

  external Future<void> setValueToJs(String value);
}

class InteropManager {
  final _interop = _JsInteropManager();

  InteropManager() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
      platformWeb[keyViewType]!,
      (viewId) => _interop.labelElement,
    );
  }

  Future<void> setValueToJs(String value) => _interop.setValueToJs(value);
}
