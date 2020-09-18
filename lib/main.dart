import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'generated/locale_keys.g.dart';
import 'generated/codegen_loader.g.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
      ],
      path: 'assets/translations',
      assetLoader: CodegenLoader(),
      child: MaterialApp(
        home: TextWidget(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // Change language
    context.locale = Locale('ru', 'RU');

    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: double.infinity,
      child: SafeArea(
        child: Text(
          LocaleKeys.gender,
          style: TextStyle(fontSize: 30, decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ).tr(gender: 'male', args: ['Mher']),
      ),
    );
  }
}

// To make avalable "flutter" command on terminal.
// Command - export PATH="$PATH:`pwd`/flutter/bin"

// Change directory to flutter project
// Command - cd /Users/mher.davtyan/AndroidStudioProjects/e_localization

// create or update "codegen_loader.g.dart" file
// Command - flutter pub run easy_localization:generate --source-dir ./assets/translations

// create or update "locale_keys.g.dart" file
// Command - flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o locale_keys.g.dart
