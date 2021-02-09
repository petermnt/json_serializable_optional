import 'package:analyzer/dart/element/type.dart';
import 'package:json_serializable/type_helper.dart';
import 'package:optional/optional.dart';
import 'package:source_gen/source_gen.dart' show TypeChecker;

class OptionalTypeHelper extends TypeHelper<TypeHelperContextWithConfig> {
  const OptionalTypeHelper();

  @override
  String serialize(DartType targetType, String expression, TypeHelperContextWithConfig context) {
    if (optionalTypeChecker.isExactlyType(targetType)) {
      return context.serialize(typeArgumentsOf(targetType, optionalTypeChecker).single, "$expression?.orElse(null)");
    }

    return null;
  }

  @override
  String deserialize(DartType targetType, String expression, TypeHelperContextWithConfig context) {
    if (optionalTypeChecker.isExactlyType(targetType)) {
      return 'Optional.ofNullable(${context.deserialize(typeArgumentsOf(targetType, optionalTypeChecker).single, expression)})';
    }

    return null;
  }
}

final optionalTypeChecker = TypeChecker.fromRuntime(Optional);
