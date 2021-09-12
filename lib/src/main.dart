import 'dart:async' show StreamSubscription;
import 'dart:collection';
import 'dart:convert' show utf8, jsonDecode, jsonEncode;
import 'dart:io' as io;

void main() {
  StreamSubscription subscriber =
      io.stdin.transform(utf8.decoder).listen((data) {
    Map<String, dynamic> json = jsonDecode(data);
    Map<String, dynamic> flattenedJson = processJson(json);
    print(jsonEncode(flattenedJson));
  });
}

Map<String, dynamic> processJson(json) {
  Map<String, dynamic> result = {};
  json.forEach((key, value) {
    result.addAll(flattenJson(key, value, result));
  });
  return result;
}

Map<String, dynamic> flattenJson(keyInitial, valueInitial, result) {
  // Base Case => no nested JSON objects, so recursion stops
  if (valueInitial is! LinkedHashMap<String, dynamic>) {
    return {keyInitial: valueInitial};
  } else {
    valueInitial.forEach((keyI, valueI) {
      String newKey = keyInitial + '.' + keyI;
      result.addAll(flattenJson(newKey, valueI, result));
    });
  }
  return result;
}
