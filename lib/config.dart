import 'package:build_cli_annotations/build_cli_annotations.dart';
import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';

@JsonSerializable()
@CliOptions()
class Config implements IConfig{
  final List<String> entryPoints;

  @CliOption(help: 'output')
  @JsonKey(nullable: true)
  final String output;

  @CliOption(negatable: true, help: 'Enable dart2js')
  bool dart2js;


  Config([this.entryPoints, this.dart2js, this.output]);

  @override
  Config fromArguments(List<String> args) => parseConfig(args);
  @override
  Config fromJson(Map<String, dynamic> json) => _$ConfigFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$ConfigToJson(this);
}


@JsonSerializable()
@CliOptions()
class Config2 implements IConfig{
  @CliOption(help: 'output')
  @JsonKey(nullable: true)
  final String hello;


  Config2([this.hello]);

  Config2 fromArguments(List<String> args) => parseConfig2(args);
  Config2 fromJson(Map<String, dynamic> json) => _$Config2FromJson(json);
  Map<String, dynamic> toJson() => _$Config2ToJson(this);
}

abstract class IConfig {
  IConfig fromArguments(List<String> args);
  IConfig fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}
