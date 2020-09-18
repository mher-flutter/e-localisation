// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru_RU = {
  "msg": "{} написан на языке {}",
  "msg_named": "Easy localization написан на языке {lang}",
  "msg_mixed": "{} написан на языке {lang}",
  "gender": {
    "male": "Привет Чувак ;) {}",
    "female": "Привет, девчонка :) {}"
  }
};
static const Map<String,dynamic> en_US = {
  "msg": "{} are written in the {} language",
  "msg_named": "Easy localization are written in the {lang} language",
  "msg_mixed": "{} are written in the {lang} language",
  "gender": {
    "male": "Hi man ;) {}",
    "female": "Hello girl :) {}"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru_RU": ru_RU, "en_US": en_US};
}
