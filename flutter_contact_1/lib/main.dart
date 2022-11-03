import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Text('텍스트') / Icon(Iccons.아이콘이름) / Image.asset('경로') / Container(), SizedBox()
      home: Scaffold(
        appBar: AppBar(
          title: Text('wl'),
        ),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: double.infinity, height: 50,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black)
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.call),
                Icon(Icons.message),
                Icon(Icons.contact_page),
              ]
            ),
          ),
        ),
      )
    );
  }
}