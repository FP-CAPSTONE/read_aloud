import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
  
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Read Aloud Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ReadAloudPage(),
    );
  }
}

class ReadAloudPage extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read Aloud Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                speak("Camera button pressed");
              },
              child: Text('Camera'),
            ),
            ElevatedButton(
              onPressed: () {
                speak("Search button pressed");
              },
              child: Text('Search'),
            ),
            ElevatedButton(
              onPressed: () {
                speak("Map button pressed");
              },
              child: Text('Map'),
            ),
          ],
        ),
      ),
    );
  }
}
