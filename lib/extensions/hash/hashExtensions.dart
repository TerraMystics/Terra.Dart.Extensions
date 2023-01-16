import 'dart:convert';
import 'dart:typed_data';

import 'package:hash/hash.dart';
import '../strings/terraStringExtensions.dart';

///Hash Extensions used for Sha256 & ripemd160 converters
class HashExtensions {
  static String hashToHex(String data) {
    return TerraStringExtension.toStringHex(getSha256(base64.decode(data)));
  }

  static Uint8List getSha256(Uint8List data) {
    return SHA256().update(data).digest();
  }

  static Uint8List ripemd160(Uint8List data) {
    return RIPEMD160().update(data).digest();
  }
}
