import 'package:test/test.dart';

import 'package:date_extensions/date_extensions.dart';

void main() {
  test('ordinal date 1', () {
    final date = DateTime(2019, 1, 1);
    expect(date.dayOfYear, 1);
  });
  test('ordinal date 2', () {
    final date = DateTime(2019, 2, 2);
    expect(date.dayOfYear, 33);
  });
  test('week number 1', () {
    final date = DateTime(2019, 1, 6);
    expect(date.week, 1);
  });
  test('week number 2', () {
    final date = DateTime(2019, 1, 7);
    expect(date.week, 2);
  });
}
