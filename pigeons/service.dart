import 'package:pigeon/pigeon.dart';

@HostApi()
abstract class ServiceApi {
  void setValue(String text);
}
