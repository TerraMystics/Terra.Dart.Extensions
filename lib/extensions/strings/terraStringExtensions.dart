import 'dart:convert';

import 'package:common_utils/common_utils.dart';
import 'package:hex/hex.dart' as HEX;
import 'package:random_string/random_string.dart';

class TerraStringExtension {
  final String _ISO_REGEX = r"/\\.000Z$/";
  static bool containsIgnoreCase(String source, String verify) =>
      source.toLowerCase().contains(verify.toLowerCase());

  /// <summary>
  /// Return either the attribute String or a default value.
  /// </summary>
  /// <param name="result">The processed String.</param>
  /// <param name="defaultString">The default String to process.</param>
  /// <returns>Return either the "result" or a default String. If no default String specified, returns "Unknown".</returns>
  static String getStringOrDefault(String result,
          {String defaultString = "Unknown"}) =>
      TextUtil.isEmpty(result) ? defaultString : result;

  /// <summary>
  /// Get bytes from String.
  /// </summary>
  /// <param name="text"></param>
  /// <returns></returns>
  static List<int> getBytesFromString(String input) => utf8.encode(input);

  static String getStringFromBytes(List<int> data) => utf8.decode(data);
  static String getStringFromBase64(String input) =>
      utf8.decode(base64.decode(input));

  static List<int> getBytesFromBase64(String input) => base64.decode(input);

  /// <summary>
  /// Remove any Escape symbols from the String
  /// </summary>
  /// <param name="str"></param>
  /// <returns></returns>
  static String escapeSingleQuotes(String str) => str.replaceAll("/g,", "\\");

  /// <summary>
  /// Converts to Base64
  /// </summary>
  /// <param name="text"></param>
  /// <returns></returns>
  static String getBase64FromString(String text) =>
      base64.encode(utf8.encode(text));
  static String getBase64FromBytes(List<int> data) => base64.encode(data);

  static String getRandomString(int length) {
    return randomString(length);
  }

  static DateTime getISODateTimeFromString(String dateTime) {
    return DateTime.parse(dateTime);
  }

  static String getISOStringFromDate(DateTime date) {
    return date.toIso8601String();
  }

  static String toStringHex(List<int> bytes) {
    return HEX.HexEncoder(upperCase: true).convert(bytes);
  }

  static List<int> hexToByteArray(String hex) {
    return HEX.HexDecoder().convert(hex);
  }
}
