import 'package:grinder_task_builder_config/config.dart';
import 'package:grinder_task_builder_config/get_config.dart';

void main(List<String> args) {
  final config = getConfig<Config>(new Config(), args);

  print('''
    entry points: ${config.entryPoints} ,
    dart2js: ${config.dart2js},
    output: ${config.output}
  ''');
}
