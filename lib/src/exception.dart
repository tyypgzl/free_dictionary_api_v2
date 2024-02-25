final class FreeDictionaryException implements Exception {
  const FreeDictionaryException({
    this.error,
    this.title,
    this.message,
    this.resolution,
    this.type,
  });

  factory FreeDictionaryException.jsonParse() => const FreeDictionaryException(
        type: FreeDictionaryExceptionType.jsonParse,
      );

  factory FreeDictionaryException.unknown(Object? error) =>
      FreeDictionaryException(
        error: error,
        type: FreeDictionaryExceptionType.unexcepted,
      );

  factory FreeDictionaryException.fromJson(Map<String, dynamic> map) =>
      FreeDictionaryException(
        title: map['title'] != null ? map['title'] as String : null,
        message: map['message'] != null ? map['message'] as String : null,
        resolution:
            map['resolution'] != null ? map['resolution'] as String : null,
        type: FreeDictionaryExceptionType.fromTitle(
          map['title'] != null ? map['title'] as String : null,
        ),
      );

  final Object? error;
  final String? title;
  final String? message;
  final String? resolution;
  final FreeDictionaryExceptionType? type;

  @override
  String toString() {
    return 'FreeDictionaryException(title: $title, message: $message,'
        ' resolution: $resolution exceptionType:$type';
  }
}

enum FreeDictionaryExceptionType {
  noDefinitionFound,
  rateLimit,
  unexcepted,
  server,
  jsonParse;

  static FreeDictionaryExceptionType fromTitle(String? title) =>
      switch (title) {
        'No Definitions Found' => FreeDictionaryExceptionType.noDefinitionFound,
        'API Rate Limit Exceeded' => FreeDictionaryExceptionType.rateLimit,
        'Something Went Wrong' => FreeDictionaryExceptionType.unexcepted,
        'Upstream Server Failed' => FreeDictionaryExceptionType.server,
        _ => FreeDictionaryExceptionType.unexcepted,
      };
}
