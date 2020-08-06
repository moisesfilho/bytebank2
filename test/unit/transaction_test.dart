import 'package:bytebank/models/transaction.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return the value when create a transaction', () {
    final transaction = Transaction(null, 200, null);
    expect(transaction.value, 200);
  });

  test('should show error when create transction with value less then zero', () {
    expect(() => Transaction(null, 0, null), throwsAssertionError);
  });

  test('should show error when create transction with value is null', () {
    expect(() => Transaction(null, null, null), throwsAssertionError);
  });
}
