import 'dart:convert';

import 'package:bytebank/http/webClient.dart';
import 'package:bytebank/models/transaction.dart';
import 'package:http/http.dart';

class TransactionWebClient {
  Future<List<Transaction>> findAll() async {
    final Response response = await client.get(baseUrl);
    if (response.statusCode != 200) {
      return null;
    }
    final List<dynamic> decodedJson = jsonDecode(response.body);
    return decodedJson.map((dynamic json) => Transaction.fromJson(json)).toList();
  }

  Future<Transaction> save(Transaction transaction, String password) async {
    final String transactionJson = jsonEncode(transaction.toJson());

    final Response response = await client.post(baseUrl,
        headers: {
          'Content-type': 'application/json',
          'password': password,
        },
        body: transactionJson);

    if (response.statusCode == 200) {
      return Transaction.fromJson(jsonDecode(response.body));
    }

    throw HttpException(_getMessage(response.statusCode));
  }

  String _getMessage(int statusCode) {
    if (_statusCodeReponses.containsKey(statusCode)) {
      return _statusCodeReponses[statusCode];
    } else {
      return 'unknow error';
    }
  }

  static final Map<int, String> _statusCodeReponses = {
    400: 'there was an error sumitting transaction',
    401: 'authentication failed',
    409: 'transaction alredy exists'
  };
}

class HttpException implements Exception {
  final String message;

  HttpException(this.message);

  String toString() {
    String result = "HttpException";
    if (message != null) result = "$result: $message";
    return result;
  }
}
