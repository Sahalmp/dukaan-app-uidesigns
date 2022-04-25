import 'package:flutter/material.dart';
import 'package:uidesigns/screens/uifive.dart';
import 'package:uidesigns/screens/uifour.dart';
import 'package:uidesigns/screens/uione.dart';
import 'package:uidesigns/screens/uisix.dart';
import 'package:uidesigns/screens/uithree.dart';
import 'package:uidesigns/screens/uitwo.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UI Designs'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uibutton(i: 1, page: UiOneWidget(), context: context),
                uibutton(i: 2, page: const UiTwoWidget(), context: context),
                uibutton(i: 3, page: const UiThreeWidget(), context: context),
                uibutton(i: 4, page: UiFourWidget(), context: context),
                uibutton(i: 5, page: const UiFiveWidget(), context: context),
                uibutton(i: 6, page: UiSixWidget(), context: context),
              ],
            ),
          ),
        ));
  }
}

uibutton({i, page, context}) {
  return Row(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            height: 60,
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => page));
              },
              icon: const Icon(
                Icons.pages,
                size: 30,
              ),
              label: Text(
                "UI $i",
                style: TextStyle(fontSize: 20, letterSpacing: 2),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
