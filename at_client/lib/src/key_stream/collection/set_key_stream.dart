import 'package:at_commons/at_commons.dart' show AtKey, AtValue;
import 'package:at_client/src/key_stream/collection/set_key_stream_impl.dart';
import 'package:at_client/src/key_stream/key_stream_mixin.dart';

abstract class SetKeyStream<T> extends Stream<Set<T>> implements KeyStreamMixin<Set<T>> {
  factory SetKeyStream({
    String? regex,
    required T Function(AtKey key, AtValue value) convert,
    String Function(AtKey key, AtValue value)? generateRef,
    String? sharedBy,
    String? sharedWith,
    bool shouldGetKeys = true,
  }) {
    return SetKeyStreamImpl<T>(
      regex: regex,
      convert: convert,
      generateRef: generateRef,
      sharedBy: sharedBy,
      sharedWith: sharedWith,
      shouldGetKeys: shouldGetKeys,
    );
  }
}
