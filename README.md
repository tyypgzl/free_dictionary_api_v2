# Free Dictionary Api

Package to access the [Free Dictionary API](https://dictionaryapi.dev/) over HTTP.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  free_dictionary_api_v2: ^latest
```

Import it:

```dart
import 'package:free_dictionary_api_v2/free_dictionary_api_v2.dart';
```

## Usage Examples

Create the FreeDictionaryApiV2 object as follows and get response with `getDefinition` function.
This function returns `FreeDictionaryResponse` list.
If there is an error, it throws a `FreeDictionaryException`.

```dart
  try {
    final dictionary = FreeDictionaryApiV2();
    final response = await dictionary.getDefinition('hello');
  } on FreeDictionaryException catch (error, stackTrace) {
    log('FreeDictionaryException:', error: error, stackTrace: stackTrace);
  }
```




## Error Handling

API throws `FreeDictionaryException` in incorrect cases.

### Types

FreeDictionaryExceptionType.noDefinitionFound



## For more API documentation

visit [Offical Site](https://dictionaryapi.dev/)
visit [Github](https://github.com/meetDeveloper/freeDictionaryAPI)