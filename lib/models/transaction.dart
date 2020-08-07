import 'package:json_annotation/json_annotation.dart';

import 'contact.dart';

part 'transaction.g.dart';

@JsonSerializable(explicitToJson: true)
class Transaction {
  final String id;
  final double value;
  final Contact contact;

  Transaction(this.id, this.value, this.contact) : assert(value != null && value > 0);

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);
  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  String toString() {
    return 'Transaction{id: $id, value: $value, contact: $contact}';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Transaction && o.value == value && o.contact == contact;
  }

  @override
  int get hashCode => id.hashCode ^ value.hashCode ^ contact.hashCode;
}
