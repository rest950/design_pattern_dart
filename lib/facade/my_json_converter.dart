import 'dart:convert';

class MyJsonConverter {
  static String serialize(Object source) {
    return JsonEncoder().convert(source);
    // return AnotherJsonEncoder().convert(source);
  }

  static T deserialize<T>(String json) {
    return JsonDecoder().convert(json);
    // return AnotherJsonDecoder().convert(json);
  }
}
