import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({Key? key}) : super(key: key);

  static const buttonStyle =
      TextStyle(fontSize: 18, decoration: TextDecoration.underline);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Choose language",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'title'.tr,
              style: TextStyle(fontSize: 18),
            ),
            TextButton(
              onPressed: () {
                Get.updateLocale(Locale('hi', 'IN'));
              },
              child: const Text(
                'Translate to Hindi',
                style: buttonStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.updateLocale(Locale('fr', 'FR'));
              },
              child: Text(
                'Translate to French',
                style: buttonStyle,
              ),
            ),
            TextButton(
              onPressed: () {
                Get.updateLocale(Locale('en', 'US'));
              },
              child: Text(
                'Translate to English',
                style: buttonStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
