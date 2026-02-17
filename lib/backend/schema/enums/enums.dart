import 'package:collection/collection.dart';

enum Categories {
  History,
  Music,
  Moviesand,
}

extension EnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension EnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Categories):
      return Categories.values.deserialize(value) as T?;
    default:
      return null;
  }
}
