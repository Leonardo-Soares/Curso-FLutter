import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste2/app.controller.dart';
import 'home_page.dart';


// Passando Parâmetros
class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child){
      return MaterialApp(
        home: HomePage(),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: AppController.instance.isDartTheme ? Brightness.dark : Brightness.light,
        ),
      );
    },
    );
  } // Widget build
} // AppWidget