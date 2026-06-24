import 'package:example/config/base_config.dart';

class DevConfig implements BaseConfig {
  @override
  String get baseUrl => 'https://api.themoviedb.org/3';
}
