import 'package:flutter/material.dart';
import 'package:grocery_comparison_app/main.dart';
import 'verslanir.dart';
import 'functions.dart';
void main(){
  runApp(MyApp());
}
/*class VoruLeit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vöruleit')),
      body: Center(
        child: Text("Leita af vöru"),
      ),
    );
  }
}

 */




class VoruLeit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Vöruleit'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'leita',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  finnaVoru(int);

                },
                child: Text('Leita'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
