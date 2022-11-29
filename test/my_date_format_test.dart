import 'package:flutter_test/flutter_test.dart';

import 'package:my_date_format/my_date_format.dart';

void main() {
  test('adds one to input values', () {
    DateTime date = DateTime.now();
    expect(dateToString(DateTime(2022, 9, 7, 16, 30)), "7 Сентября");
  });
}
