import 'package:free_dictionary_api_v2/free_dictionary_api_v2.dart';

class FreeDictionaryApiV2 {
  FreeDictionaryApiV2({FreeDictionaryClient? freeDictionaryClient})
      : _freeDictionaryClient = freeDictionaryClient ?? FreeDictionaryClient();

  final FreeDictionaryClient _freeDictionaryClient;

  Future<List<FreeDictionaryResponse>> getDefinition(
    String value, {
    String langCode = 'en',
  }) =>
      _freeDictionaryClient.getDefinition(value, langCode: langCode);
}
