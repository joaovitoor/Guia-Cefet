import 'package:flutter/material.dart';
import 'AppController.dart';
import 'Home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          title: 'App Cefet',
          theme: ThemeData(
              primaryColor: Colors.blue[400],
              brightness: AppController.instance.isDartTheme
                  ? Brightness.dark
                  : Brightness.light),
          home: HomePage(),
        );
      },
    );
  }
}
