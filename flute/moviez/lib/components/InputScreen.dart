import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String inputText = "";
  String outputText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Moviez'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Center(
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    inputText =
                        value; 
                  });
                },
                decoration: InputDecoration(
                  labelText: 'Search Movie',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 8),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 15, 121, 243)), // Default color
                foregroundColor:
                    MaterialStateProperty.all(Colors.white), // Text color
              ),
              onPressed: () {
                print(inputText);
                print(outputText);
                setState(() { 
                  outputText = "Searching for " +inputText;
                });
              },
              child: Text(
                "Search",
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "${outputText}",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
