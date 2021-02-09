import 'package:optional/optional.dart';
import 'package:test/test.dart';

import 'model.dart';

final model = MyModel(
  normalString: "bla",
  optionalStringPresent: Optional.of("here"),
  optionalStringNull: Optional.empty(),
  normalNested: Nested(1),
  optionalNestedPresent: Optional.of(Nested(1)),
  optionalNestedNull: Optional.empty(),
);

void main() {
  test("can serialize", () {
    final jsonMap = model.toJson();
    expect(jsonMap, {
      "normalString": "bla",
      "optionalStringPresent": "here",
      "optionalStringNull": null,
      "optionalStringMissing": null,
      "normalNested": {"a": 1},
      "optionalNestedPresent": {"a": 1},
      "optionalNestedNull": null,
      "optionalNestedMissing": null,
    });
  });

  test("can deserialize", () {
    expect(
        MyModel.fromJson({
          "normalString": "bla",
          "optionalStringPresent": "here",
          "optionalStringNull": null,
          "normalNested": {"a": 1},
          "optionalNestedPresent": {"a": 1},
          "optionalNestedNull": null,
        }),
        model);
  });
}
