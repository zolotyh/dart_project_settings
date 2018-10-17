import 'package:grinder_task_builder_config/config.dart';
import 'package:grinder_task_builder_config/get_config.dart';

void main(List<String> args) {
  final config = getConfig<Config2>(new Config2(), args);

  print('hello: ${config.hello}');
}
