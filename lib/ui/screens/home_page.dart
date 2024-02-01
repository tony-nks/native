import 'package:flutter/material.dart';
import 'package:app_integrations/consts/keys.dart';
import 'package:app_integrations/consts/translations.dart';
import 'package:app_integrations/ffi/ffi_bridge.dart';
import 'package:app_integrations/services/service_platform.dart';
import 'package:app_integrations/ui/components/my_app_bar.dart';

import 'package:app_integrations/ui/components/platform/platform_other.dart'
    if (dart.library.html) 'package:app_integrations/ui/components/platform/platform_web.dart'
    if (dart.library.io) 'package:app_integrations/ui/components/platform/platform_android.dart';

part 'components/text_show.dart';
part 'components/text_length.dart';
part 'components/my_button.dart';
part 'components/my_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ServicePlatform _service = getService();
  final TextEditingController _controller = TextEditingController();

  final _bridge = FFIBridge();

  bool _isShowView = false;
  int? _length;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(child: Text(labelsHome[keyTitle]!, style: TextStyle(color: Colors.black),)),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyField(controller: _controller),
              TextShow(isShowView: _isShowView),
              TextLength(length: _length),
            ],
          ),
        ),
      ),
      floatingActionButton: MyButton(onPressed: _setValue),
    );
  }

  void _setValue() async {
    await _service.callMethodChannel(_controller.text);

    setState(() {
      _isShowView = true;

      _length = _bridge.getLength(_controller.text);
    });
  }
}
