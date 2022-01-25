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
        primarySwatch: Colors.blue,
      ),
      home: MyButtons(),
    );
  }
}

class MyButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //print('text button!!');
              },
              onLongPress: () {
                print('text button');
              },
              child: Text(
                'Text button',
                style: TextStyle(fontSize: 20),
              ),
              style: TextButton.styleFrom(
                  primary: Colors.blue, backgroundColor: Colors.blue[50]),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated button');
              },
              child: Text('Elevated button'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Outlined button'),
              style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: BorderSide(color: Colors.black87, width: 2.0)),
            ),
            TextButton.icon(
              onPressed: () {
                print('Icon button');
              },
              icon: Icon(Icons.home, size: 30.0, color: Colors.black87),
              label: Text('Go to home'),
              style: TextButton.styleFrom(primary: Colors.purple),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  print('Icon button');
                },
                icon: Icon(Icons.home, size: 30.0),
                label: Text('Go to home'),
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                    minimumSize: Size(200, 50))),
            OutlinedButton.icon(
              onPressed: null, // 비활성화
              icon: Icon(Icons.home, size: 30.0),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  primary: Colors.indigo, onSurface: Colors.pink),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20),
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("TextButton"),
                ),
                ElevatedButton(onPressed: () {}, child: Text("ElevatedButton"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
