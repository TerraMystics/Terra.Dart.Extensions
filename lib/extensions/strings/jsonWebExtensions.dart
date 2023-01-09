import 'dart:convert';

/// Web Extensions for JSON
class JsonWebExtensions {
  static String getJSONFromobject(dynamic data) => json.encode(data);
  static String getObjectFromJson(String data) => json.decode(data);
}
