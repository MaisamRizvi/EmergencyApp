import 'package:flutter/material.dart';
import 'package:flutter_application_1/Components/splash_screen.dart';
import 'package:flutter_application_1/home_tabs.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const RestorationScope(restorationId: 'root', child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1ClickHelp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: AnimatedSplashScreen(
          duration: 3000,
          splash: const SplashScreen(),
          nextScreen: const HomeScreenTabs(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
    );
  }
}
