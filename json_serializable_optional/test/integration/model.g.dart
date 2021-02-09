// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyModel _$MyModelFromJson(Map<String, dynamic> json) {
  return MyModel(
    normalString: json['normalString'] as String,
    optionalStringPresent:
        Optional.ofNullable(json['optionalStringPresent'] as String),
    optionalStringNull:
        Optional.ofNullable(json['optionalStringNull'] as String),
    optionalStringMissing:
        Optional.ofNullable(json['optionalStringMissing'] as String),
    normalNested: json['normalNested'] == null
        ? null
        : Nested.fromJson(json['normalNested'] as Map<String, dynamic>),
    optionalNestedPresent: Optional.ofNullable(
        json['optionalNestedPresent'] == null
            ? null
            : Nested.fromJson(
                json['optionalNestedPresent'] as Map<String, dynamic>)),
    optionalNestedNull: Optional.ofNullable(json['optionalNestedNull'] == null
        ? null
        : Nested.fromJson(json['optionalNestedNull'] as Map<String, dynamic>)),
    optionalNestedMissing: Optional.ofNullable(
        json['optionalNestedMissing'] == null
            ? null
            : Nested.fromJson(
                json['optionalNestedMissing'] as Map<String, dynamic>)),
  );
}

Map<String, dynamic> _$MyModelToJson(MyModel instance) => <String, dynamic>{
      'normalString': instance.normalString,
      'optionalStringPresent': instance.optionalStringPresent?.orElse(null),
      'optionalStringNull': instance.optionalStringNull?.orElse(null),
      'optionalStringMissing': instance.optionalStringMissing?.orElse(null),
      'normalNested': instance.normalNested?.toJson(),
      'optionalNestedPresent':
          instance.optionalNestedPresent?.orElse(null)?.toJson(),
      'optionalNestedNull': instance.optionalNestedNull?.orElse(null)?.toJson(),
      'optionalNestedMissing':
          instance.optionalNestedMissing?.orElse(null)?.toJson(),
    };

Nested _$NestedFromJson(Map<String, dynamic> json) {
  return Nested(
    json['a'] as int,
  );
}

Map<String, dynamic> _$NestedToJson(Nested instance) => <String, dynamic>{
      'a': instance.a,
    };
