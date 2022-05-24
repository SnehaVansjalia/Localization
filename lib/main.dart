import 'package:flutter/material.dart';
import 'choose_language.dart';
import 'home_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('en', 'US'),
      // supportedLocales: const [
      //   Locale('en', 'US'),
      //   Locale('hi', 'IN'),
      //   Locale('fr', 'FR'),
      // ],
      translationsKeys: const {
        'en_US': {'title': 'Hello'},
        'hi_IN': {'title': 'नमस्ते'},
        'fr_FR': {'title': 'Bonjour'}
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
