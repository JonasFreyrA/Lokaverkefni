import 'package:flutter/material.dart';
import 'FinnaVoru.dart';
import 'innkaupaListi.dart';
import 'EldriListar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("appid"),),
        body: Center(
          child: Column(
            children: <Widget>[
              TextButton(
          style: TextButton.styleFrom(
            primary: Colors.blue,
            onSurface: Colors.red,
          ),
          onPressed: null,
          child: Text('TextButton'),
              ),],
          ),
        ),
      ),
      title: 'Flutter Pages Example',
      initialRoute: '/',
      routes: {
        '/': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
    );
  }
}
