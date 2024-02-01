import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:app_integrations/consts/channels.dart';
import 'package:app_integrations/consts/keys.dart';

class UiPlatform extends StatelessWidget {
  const UiPlatform({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> creationParams = {};
    final String viewType = platformAndroid[keyViewType]!;

    final Widget view = PlatformViewLink(
      surfaceFactory: ((_, controller) {
        return AndroidViewSurface(
          controller: controller as AndroidViewController,
          hitTestBehavior: PlatformViewHitTestBehavior.translucent,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
        );
      }),
      onCreatePlatformView: ((params) {
        return PlatformViewsService.initSurfaceAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: creationParams,
          creationParamsCodec: const StandardMessageCodec(),
          onFocus: () {
            params.onFocusChanged(true);
          },
        )
          ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
          ..create();
      }),
      viewType: viewType,
    );

    return SizedBox(height: 64, child: view);
  }
}
