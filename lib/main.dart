import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_tabs.dart';

void main() {
  runApp(const RestorationScope(restorationId: 'root', child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1ClickAway',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreenTabs(),
      debugShowCheckedModeBanner: false,
    );
  }
}
