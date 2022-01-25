import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  height: 100, color: Colors.white, child: Text('Container 1')),
              SizedBox(height: 30.0),
              Container(
                  height: 100, color: Colors.blue, child: Text('Container 2')),
              Container(
                  height: 100, color: Colors.red, child: Text('Container 3')),
            ],
          ),
        ));
  }
}
