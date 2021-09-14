import 'package:design_pattern/facade/my_json_converter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('My Json Converter Test', () {
    final source = {'count': 99, 'name': 'Bill'};

    final json = MyJsonConverter.serialize(source);
    final obj = MyJsonConverter.deserialize(json);

    expect(obj, source);
  });
}
