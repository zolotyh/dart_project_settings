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

abstract class IConfig {
  Config fromArguments(List<String> args);
  Config fromJson(Map<String, dynamic> json);
  Map<String, dynamic> toJson();
}


