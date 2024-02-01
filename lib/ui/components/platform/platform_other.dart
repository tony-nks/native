import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app_integrations/consts/translations.dart';

class UiPlatform extends StatelessWidget {
  const UiPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('$defaultTargetPlatform $labelUnsupported');
  }
}
