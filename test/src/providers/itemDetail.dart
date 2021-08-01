// Packages
import 'package:clothesstore/src/providers/itemDetail.dart';
import 'package:test/test.dart';

void main() {
  group('ItemDetailProvider', () {
    final count = ItemDetailProvider().count;

    test('counter should start at 1', () {
      expect(count, equals(1));
    });
  });
}
