import 'package:example/config/base_config.dart';

class ProdConfig implements BaseConfig {
  @override
  String get baseUrl => 'https://api.themoviedb.org/3';
}
