final class FreeDictionaryResponse {
  const FreeDictionaryResponse({
    this.word,
    this.phonetic,
    this.phonetics,
    this.meanings,
    this.license,
    this.sourceUrls,
  });

  factory FreeDictionaryResponse.fromJson(Map<String, dynamic> json) {
    return FreeDictionaryResponse(
      word: json['word'] as String?,
      phonetic: json['phonetic'] as String?,
      phonetics: (json['phonetics'] as List<dynamic>?)
          ?.map((e) => Phonetics.fromJson(e as Map<String, dynamic>))
          .toList(),
      meanings: (json['meanings'] as List<dynamic>?)
          ?.map((e) => Meanings.fromJson(e as Map<String, dynamic>))
          .toList(),
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
      sourceUrls: (json['sourceUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }
  final String? word;
  final String? phonetic;
  final List<Phonetics>? phonetics;
  final List<Meanings>? meanings;
  final License? license;
  final List<String>? sourceUrls;

  FreeDictionaryResponse copyWith({
    String? word,
    String? phonetic,
    List<Phonetics>? phonetics,
    List<Meanings>? meanings,
    License? license,
    List<String>? sourceUrls,
  }) {
    return FreeDictionaryResponse(
      word: word ?? this.word,
      phonetic: phonetic ?? this.phonetic,
      phonetics: phonetics ?? this.phonetics,
      meanings: meanings ?? this.meanings,
      license: license ?? this.license,
      sourceUrls: sourceUrls ?? this.sourceUrls,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'word': word,
      'phonetic': phonetic,
      'phonetics': phonetics,
      'meanings': meanings,
      'license': license,
      'sourceUrls': sourceUrls,
    };
  }

  @override
  String toString() => 'FreeDictionaryResponse(word: $word,phonetic: $phonetic'
      ',phonetics: $phonetics,meanings: $meanings,license: $license'
      ',sourceUrls: $sourceUrls)';
}

final class Phonetics {
  const Phonetics({
    this.text,
    this.audio,
    this.sourceUrl,
    this.license,
  });

  factory Phonetics.fromJson(Map<String, dynamic> json) {
    return Phonetics(
      text: json['text'] as String?,
      audio: json['audio'] as String?,
      sourceUrl: json['sourceUrl'] as String?,
      license: json['license'] == null
          ? null
          : License.fromJson(json['license'] as Map<String, dynamic>),
    );
  }
  final String? text;
  final String? audio;
  final String? sourceUrl;
  final License? license;

  Phonetics copyWith({
    String? text,
    String? audio,
    String? sourceUrl,
    License? license,
  }) {
    return Phonetics(
      text: text ?? this.text,
      audio: audio ?? this.audio,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      license: license ?? this.license,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'audio': audio,
      'sourceUrl': sourceUrl,
      'license': license,
    };
  }

  @override
  String toString() =>
      'Phonetics(text: $text,audio: $audio,sourceUrl: $sourceUrl'
      ',license: $license)';
}

final class License {
  const License({
    this.name,
    this.url,
  });

  factory License.fromJson(Map<String, dynamic> json) {
    return License(
      name: json['name'] as String?,
      url: json['url'] as String?,
    );
  }
  final String? name;
  final String? url;

  License copyWith({
    String? name,
    String? url,
  }) {
    return License(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'url': url,
    };
  }

  @override
  String toString() => 'License(name: $name,url: $url)';
}

final class Meanings {
  const Meanings({
    this.partOfSpeech,
    this.definitions,
    this.synonyms,
    this.antonyms,
  });

  factory Meanings.fromJson(Map<String, dynamic> json) {
    return Meanings(
      partOfSpeech: json['partOfSpeech'] as String?,
      definitions: (json['definitions'] as List<dynamic>?)
          ?.map((e) => Definitions.fromJson(e as Map<String, dynamic>))
          .toList(),
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }
  final String? partOfSpeech;
  final List<Definitions>? definitions;
  final List<String>? synonyms;
  final List<String>? antonyms;

  Meanings copyWith({
    String? partOfSpeech,
    List<Definitions>? definitions,
    List<String>? synonyms,
    List<String>? antonyms,
  }) {
    return Meanings(
      partOfSpeech: partOfSpeech ?? this.partOfSpeech,
      definitions: definitions ?? this.definitions,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'partOfSpeech': partOfSpeech,
      'definitions': definitions,
      'synonyms': synonyms,
      'antonyms': antonyms,
    };
  }

  @override
  String toString() =>
      'Meanings(partOfSpeech: $partOfSpeech,definitions: $definitions'
      ',synonyms: $synonyms,antonyms: $antonyms)';
}

final class Definitions {
  const Definitions({
    this.definition,
    this.synonyms,
    this.antonyms,
    this.example,
  });

  factory Definitions.fromJson(Map<String, dynamic> json) {
    return Definitions(
      definition: json['definition'] as String?,
      synonyms: (json['synonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      antonyms: (json['antonyms'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      example: json['example'] as String?,
    );
  }
  final String? definition;
  final List<String>? synonyms;
  final List<String>? antonyms;
  final String? example;

  Definitions copyWith({
    String? definition,
    List<String>? synonyms,
    List<String>? antonyms,
    String? example,
  }) {
    return Definitions(
      definition: definition ?? this.definition,
      synonyms: synonyms ?? this.synonyms,
      antonyms: antonyms ?? this.antonyms,
      example: example ?? this.example,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'definition': definition,
      'synonyms': synonyms,
      'antonyms': antonyms,
      'example': example,
    };
  }

  @override
  String toString() => 'Definitions(definition: $definition,synonyms: $synonyms'
      ',antonyms: $antonyms,example: $example)';
}
