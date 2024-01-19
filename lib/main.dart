import 'package:flutter/material.dart';
import 'innkaupaListi.dart';
import 'FinnaVoru.dart';
import 'EldriListar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Verð samanburður'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Fer á innkaupaListi.dart
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => InnkaupaListi()));
                  },
                  child: Text('Finna vöru'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // fer á FinnaVoru.dart
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MyHomePage()));
                  },
                  child: Text('Innkaupa listi'),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // fer á eldriListar.dart
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EldriListar()));
                  },
                  child: Text("Eldri listar"),
                ),
              ],
            ),
          ),
        ));
  }
}
