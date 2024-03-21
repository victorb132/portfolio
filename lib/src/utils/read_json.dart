import 'dart:convert';

import 'package:flutter/services.dart';

class ReadJson {
  static Future<List<dynamic>> readJson(String path) async {
    final jsonString = await rootBundle.loadString(path);
    return json.decode(jsonString);
  }
}
