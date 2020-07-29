// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return Transaction(
    json['id'] as String,
    (json['value'] as num)?.toDouble(),
    json['contact'] == null
        ? null
        : Contact.fromJson(json['contact'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TransactionToJson(Transaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'contact': instance.contact?.toJson(),
    };
