import 'package:bytebank/models/contact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('should return a name when create a contact', () {
    final contact = Contact(null, "test", 123);
    expect(contact.name, "test");
  });

  test('should show error when create contact with name is null', () {
    expect(() => Contact(null, null, 123), throwsAssertionError);
  });

  test('should show error when create contact with accountNumber is null', () {
    expect(() => Contact(null, 'name', null), throwsAssertionError);
  });

  test('should show error when create contact with accountNumber is less then zero', () {
    expect(() => Contact(null, 'name', 0), throwsAssertionError);
  });
}
