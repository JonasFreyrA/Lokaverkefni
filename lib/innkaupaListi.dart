import 'package:flutter/material.dart';
import 'functions.dart';
import 'verslanir.dart';

void main() {
  runApp(VoruLeit());
}

class VoruLeit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VoruLeit(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // TextEditingController to manage the text field's state
  TextEditingController _textEditingController = TextEditingController();

  List<int> itemList = [];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Innkaupa listi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  labelText: "Velja",
                ),
              ),
            ),
            // ElevatedButton
            ElevatedButton(
              onPressed: () {
                String enteredText = _textEditingController.text;
                leitaVoru(enteredText);

                // Leitar af voru í verslanir.dart í gegnum fallið leitaVoru
                if (leitaVoru(enteredText).isNotEmpty) {
                  setState(() {

                    itemList.add(leitaVoru(enteredText));
                    _textEditingController.clear();
                  });
                }
              },
              child: Text('Bæta í lista'),
            ),
            // Display the list of items
            SizedBox(height: 16.0),
            Text("Valdar vörur"),
            Column(                     //bætir voru á lista
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemList.map((item) => Text('- $item')).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

