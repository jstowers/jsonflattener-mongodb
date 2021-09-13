import 'dart:io';
import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:test/test.dart';

import '../lib/main.dart' show processJson;

void main() {
  test('sample1.json: returns correct flattened json object', () {
    String jsonString = File('lib/assets/sample1.json').readAsStringSync();
    Map<String, dynamic> json = jsonDecode(jsonString);
    String expectedFlattenedJson = '{"a":1,"b":true,"c.d":3,"c.e":"test"}';
    expect(jsonEncode(processJson(json)), expectedFlattenedJson);
  });

  test('sample2.json: returns correct flattened json object', () {
    String jsonString = File('lib/assets/sample2.json').readAsStringSync();
    Map<String, dynamic> json = jsonDecode(jsonString);
    String expectedFlattenedJson =
        '{"a":1,"b":true,"c.d":3,"c.e":"test","c.f.g":5,"c.f.h":false}';
    expect(jsonEncode(processJson(json)), expectedFlattenedJson);
  });

  test('sample3.json: returns correct flattened json object', () {
    String jsonString = File('lib/assets/sample3.json').readAsStringSync();
    Map<String, dynamic> json = jsonDecode(jsonString);
    String expectedFlattenedJson =
        '{"name":"Erroll Garner","instrument":"piano","genre":"jazz","album.name":"Concert by the Sea","album.style":"jazz","album.date":"September 19, 1955","album.location":"Carmel-by-the-Sea","album.state":"California","album.label.name":"Columbia","album.label.catalogNumber":883,"accompaniment.bass":"Eddie Calhoun","accompaniment.drums":"Denzil Best","accompaniment.guitar":null,"isImmortal":true}';
    expect(jsonEncode(processJson(json)), expectedFlattenedJson);
  });
}
