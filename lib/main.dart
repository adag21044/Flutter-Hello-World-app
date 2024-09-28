import 'package:flutter/material.dart';

void main() {
  runApp(const HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
  const HelloWorldApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloWorldScreen(),
    );
  }
}

class HelloWorldScreen extends StatefulWidget {
  @override
  _HelloWorldScreenState createState() => _HelloWorldScreenState();
}

class _HelloWorldScreenState extends State<HelloWorldScreen> {
  // Başlangıçta "Press the button!" yazısı görünsün
  String _displayText = 'Press the button!'; 

  void _showHelloWorld() {
    setState(() {
      _displayText = 'Hello, World!'; // Butona basıldığında metni ayarla
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _displayText, // Mevcut metni göster
              style: TextStyle(fontSize: 24), // Metin boyutunu ayarlama
            ),
            SizedBox(height: 20), // Metin ile buton arasına boşluk ekleme
            ElevatedButton(
              onPressed: _showHelloWorld,
              child: Text('Show Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
