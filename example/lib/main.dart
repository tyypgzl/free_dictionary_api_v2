import 'dart:developer' as dev;

import 'package:free_dictionary_api_v2/free_dictionary_api_v2.dart';

Future<void> main() async {
  try {
    final dictionary = FreeDictionaryApiV2();
    final response = await dictionary.getDefinition('hello');
    dev.log(response.toString());
  } on FreeDictionaryException catch (error, stackTrace) {
    dev.log('FreeDictionaryException:', error: error, stackTrace: stackTrace);
  }
}
