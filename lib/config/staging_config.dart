import 'package:example/config/base_config.dart';

class StagingConfig implements BaseConfig {
  @override
  String get baseUrl => 'https://api.themoviedb.org/3';
}
