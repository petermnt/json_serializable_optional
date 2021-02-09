import 'package:json_annotation/json_annotation.dart';
import 'package:optional/optional.dart';

part 'model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class MyModel {
  const MyModel({
    this.normalString,
    this.optionalStringPresent,
    this.optionalStringNull,
    this.optionalStringMissing,
    this.normalNested,
    this.optionalNestedPresent,
    this.optionalNestedNull,
    this.optionalNestedMissing,
  });

  final String normalString;
  final Optional<String> optionalStringPresent;
  final Optional<String> optionalStringNull;
  final Optional<String> optionalStringMissing;
  final Nested normalNested;
  final Optional<Nested> optionalNestedPresent;
  final Optional<Nested> optionalNestedNull;
  final Optional<Nested> optionalNestedMissing;

  factory MyModel.fromJson(Map<String, dynamic> json) => _$MyModelFromJson(json);

  Map<String, dynamic> toJson() => _$MyModelToJson(this);

  @override
  bool operator ==(Object other) => identical(this, other) || other is MyModel && toString() == other.toString();
}

@JsonSerializable(
  explicitToJson: true,
)
class Nested {
  const Nested(this.a);

  final int a;

  Map<String, dynamic> toJson() => _$NestedToJson(this);

  factory Nested.fromJson(Map<String, dynamic> json) => _$NestedFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Nested && runtimeType == other.runtimeType && a == other.a;

  @override
  int get hashCode => a.hashCode;
}
