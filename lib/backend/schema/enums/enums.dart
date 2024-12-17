import 'package:collection/collection.dart';

enum Alinhamento {
  Left,
  Right,
  Center,
  Justify,
}

enum Genders {
  Masculino,
  Feminino,
  Outro,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Alinhamento):
      return Alinhamento.values.deserialize(value) as T?;
    case (Genders):
      return Genders.values.deserialize(value) as T?;
    default:
      return null;
  }
}
