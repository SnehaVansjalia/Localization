import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:translation_practice/choose_language.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Easy localization",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click on button to translate app in diffrent language.",
                softWrap: true,
                style: TextStyle(fontSize: 18),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(elevation: 0),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                    builder: (context) => const ChooseLanguage(),
                  ));
                },
                child: const Text("Switch Language"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
