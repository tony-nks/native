import 'package:flutter/material.dart';
import 'package:app_integrations/consts/channels.dart';
import 'package:app_integrations/consts/keys.dart';

export 'platform_web.dart';

class UiPlatform extends StatelessWidget {
  const UiPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 256,
      child: HtmlElementView(viewType: platformWeb[keyViewType]!),
    );
  }
}
