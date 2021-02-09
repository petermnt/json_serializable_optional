import 'package:json_annotation/json_annotation.dart';
import 'package:optional/optional.dart';

part 'main.g.dart';

@JsonSerializable()
class Model {
  final Optional<int> myIntOptional;

  Model({this.myIntOptional});

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);

  Map<String, dynamic> toJson() => _$ModelToJson(this);
}

void main() {
  print(Model(myIntOptional: Optional.of(1)).toJson());
}
