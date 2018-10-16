// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// CliGenerator
// **************************************************************************

Config _$parseConfigResult(ArgResults result) => new Config(
    result['entry-points'] as List<String>,
    result['dart2js'] as bool,
    result['output'] as String);

ArgParser _$populateConfigParser(ArgParser parser) => parser
  ..addMultiOption('entry-points')
  ..addOption('output', help: 'output')
  ..addFlag('dart2js', help: 'Enable dart2js', negatable: true);

final _$parserForConfig = _$populateConfigParser(new ArgParser());

Config parseConfig(List<String> args) {
  var result = _$parserForConfig.parse(args);
  return _$parseConfigResult(result);
}

Config2 _$parseConfig2Result(ArgResults result) =>
    new Config2(result['hello'] as String);

ArgParser _$populateConfig2Parser(ArgParser parser) =>
    parser..addOption('hello', help: 'output');

final _$parserForConfig2 = _$populateConfig2Parser(new ArgParser());

Config2 parseConfig2(List<String> args) {
  var result = _$parserForConfig2.parse(args);
  return _$parseConfig2Result(result);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map<String, dynamic> json) {
  return Config(
      (json['entryPoints'] as List)?.map((e) => e as String)?.toList(),
      json['dart2js'] as bool,
      json['output'] as String);
}

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'entryPoints': instance.entryPoints,
      'output': instance.output,
      'dart2js': instance.dart2js
    };

Config2 _$Config2FromJson(Map<String, dynamic> json) {
  return Config2(json['hello'] as String);
}

Map<String, dynamic> _$Config2ToJson(Config2 instance) =>
    <String, dynamic>{'hello': instance.hello};
