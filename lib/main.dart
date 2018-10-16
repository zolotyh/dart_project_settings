import 'dart:convert';
import 'dart:io';

import 'package:grinder_task_builder_config/config.dart';
import 'package:collection/collection.dart';
import 'package:yaml/yaml.dart';

void main(List<String> args) {
  final config = getConfig<Config>(new Config(), args);

  print('''
    entry points: ${config.entryPoints} ,
    dart2js: ${config.dart2js},
    output: ${config.output}
  ''');
}

T getConfig<T extends IConfig>(T config, List<String> args){
  final comandLine = config.fromArguments(args).toJson();

  final Map<String, dynamic> defaultYaml = json.decode(jsonEncode(
      loadYaml(new File('grinder_tasks_builder.default.yaml').readAsStringSync())));

  final Map<String, dynamic> yaml = json.decode(jsonEncode(
      loadYaml(new File('grinder_tasks_builder.yaml').readAsStringSync())));

  final map = new Map<String, dynamic>.from(
      new CombinedMapView<String, dynamic>([comandLine, yaml, defaultYaml]));

  return config.fromJson(map) as T;
}