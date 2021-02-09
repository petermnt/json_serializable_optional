// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Model _$ModelFromJson(Map<String, dynamic> json) {
  return Model(
    myIntOptional: Optional.ofNullable(json['myIntOptional'] as int),
  );
}

Map<String, dynamic> _$ModelToJson(Model instance) => <String, dynamic>{
      'myIntOptional': instance.myIntOptional?.orElse(null),
    };
