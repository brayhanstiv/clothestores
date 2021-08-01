// Packages
import 'package:clothesstore/src/providers/navigationBar.dart';
import 'package:test/test.dart';

void main() {
  group('NavigationBarProvider', () {
    final currentIndex = NavigationBarProvider().currentIndex;

    test('currentIndex should start at 0', () {
      expect(currentIndex, equals(0));
    });
  });
}
