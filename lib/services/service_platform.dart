import 'package:app_integrations/services/service_platform_other.dart'
    if (dart.library.html) 'package:app_integrations/services/service_platform_web.dart'
    if (dart.library.io) 'package:app_integrations/services/service_platform_android.dart';

abstract class ServicePlatform {
  Future<void> callMethodChannel(String text);
}

ServicePlatform getService() => ServicePlatformImp();
