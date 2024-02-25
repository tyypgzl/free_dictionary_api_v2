// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:free_dictionary_api_v2/src/constant.dart';
import 'package:free_dictionary_api_v2/src/exception.dart';
import 'package:free_dictionary_api_v2/src/types.dart';
import 'package:http/http.dart' as http;

final class FreeDictionaryClient {
  FreeDictionaryClient({http.Client? client})
      : _client = client ?? http.Client();

  final http.Client _client;

  Future<List<FreeDictionaryResponse>> getDefinition(
    String value, {
    required String langCode,
  }) async {
    try {
      final uri = Uri.https(kBaseUrl, '$kGetDefinitionUrl/$langCode/$value');
      final repsonse = await _client.get(uri);
      final json = await Isolate.run(() => jsonDecode(repsonse.body));
      if (repsonse.statusCode == HttpStatus.ok) {
        if (json is List) {
          return json
              .cast<Map<String, dynamic>>()
              .map(FreeDictionaryResponse.fromJson)
              .toList();
        } else {
          throw FreeDictionaryException.jsonParse();
        }
      } else {
        if (json is Map<String, dynamic>) {
          throw FreeDictionaryException.fromJson(json);
        } else {
          throw FreeDictionaryException.jsonParse();
        }
      }
    } on FreeDictionaryException {
      rethrow;
    } catch (error, stackTrace) {
      Error.throwWithStackTrace(
        FreeDictionaryException.unknown(error),
        stackTrace,
      );
    }
  }
}
