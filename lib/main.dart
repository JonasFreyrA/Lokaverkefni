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
    return Scaffold(
      appBar: AppBar(
        title: Text('Verð samanburður'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Page1
                Navigator.push(context, MaterialPageRoute(builder: (context) => VoruLeit()));
              },
              child: Text('Finna vöru'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Navigate to Page2
                Navigator.push(context, MaterialPageRoute(builder: (context) => InnkaupaListi()));
              },
              child: Text('Innkaupa listi'),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate to Page3
                Navigator.push(context, MaterialPageRoute(builder: (context) => EldriListar()));
              },
              child: Text("Eldri listar"),
            ),
          ],
        ),
      ),
    );
  }
}






