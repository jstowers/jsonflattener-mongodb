import 'dart:collection';
import 'dart:convert';
import 'dart:io';

void main() {
  String jsonString = File('../assets/sample.json').readAsStringSync();
  Map<String, dynamic> json = jsonDecode(jsonString);

  Map<String, dynamic> flattenedJson = processJson(json);
  print('flattenedJson = ${jsonEncode(flattenedJson)}');
}

Map<String, dynamic> processJson(json) {
  Map<String, dynamic> result = {};
  json.forEach((key, value) {
    result.addAll(jsonFlattener(key, value, result));
    print('result = ${result}');
  });
  return result;
}

Map<String, dynamic> jsonFlattener(keyInitial, valueInitial, result) {
  print('keyInitial = ${keyInitial}');
  print('valueInitial = ${valueInitial}');

  // Base Case
  if (valueInitial is! LinkedHashMap<String, dynamic>) {
    return {keyInitial: valueInitial};
  } else {
    valueInitial.forEach((keyI, valueI) {
      String newKey = keyInitial + '.' + keyI;
      result.addAll(jsonFlattener(newKey, valueI, result));
    });
  }
  return result;
}
