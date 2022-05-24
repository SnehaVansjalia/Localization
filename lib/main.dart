import 'package:flutter/material.dart';
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
      locale: const Locale('en', 'US'),
      translationsKeys: const {
        'en_US': {'title': 'Hello', 'greeting': 'How are you?'},
        'hi_IN': {'title': 'नमस्ते', 'greeting': 'क्या हाल चाल है?'},
        'fr_FR': {'title': 'Bonjour', 'greeting': 'Comment allez-vous'}
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
