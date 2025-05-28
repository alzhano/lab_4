import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Practice 4")),
        body: SingleChildScrollView(
        child: Column(children: [
          Image.asset('assets/images/MainPic.jpg', height:200, width:200, fit:BoxFit.fitHeight,),
          Image.asset('assets/images/second.jpg', height:200, width:200, fit:BoxFit.contain,),
        
          ],
        ),
      ),
    ),
    );
  }
}
