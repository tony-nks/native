// Project imports:
import 'package:app_integrations/services/service_platform.dart';
import 'package:app_integrations/services/service_platform_web_interop.dart';

class ServicePlatformImp implements ServicePlatform {
  final _manager = InteropManager();

  @override
  Future<void> callMethodChannel(String text) async {
    await _manager.setValueToJs(text);
  }
}
