// Project imports:
import 'package:app_integrations/services/service_pigeon.dart';
import 'package:app_integrations/services/service_platform.dart';

class ServicePlatformImp implements ServicePlatform {
  @override
  Future<void> callMethodChannel(String text) async {
    // Можно добавить перехват ошибки
    await ServiceApi().setValue(text);
  }
}
