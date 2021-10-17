import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teste2/app.controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();

  }
}

class HomePageState extends State<HomePage> {
  int contador = 0;
  get shadowColor => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 50.0,
          actions: [StyleSwitch(),],
          leading: IconButton(
            icon: Icon(Icons.add),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          //IconButton
          brightness: Brightness.dark,
          title: Center(

            child: Text('Nutrição',
                style:
                TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),

        ),

        body: Center(
          child: StyleSwitch(),
    ),

  );
  }
}

// Estilo do button switch
class StyleSwitch extends StatelessWidget {
  const StyleSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        }
    );
  }
}
