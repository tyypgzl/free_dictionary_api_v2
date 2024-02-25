import 'package:free_dictionary_api_v2/free_dictionary_api_v2.dart';

Future<void> main() async {
  try {
    final dictionary = FreeDictionaryApiV2();
    final response = await dictionary.getDefinition('hello', langCode: 'tr');
    print(response);
  } on FreeDictionaryException catch (error, stackTrace) {
    print('Exception: $error stackTrace: $stackTrace');
  }
}
