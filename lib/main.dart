import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'BottomNavigationBar (Curved)';
  GlobalKey _globalKey = GlobalKey();
  int _page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFFFBE0E6),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _globalKey,
        index: 0,
        height: 58.0,
        color: Colors.white,
        buttonBackgroundColor: Color(0xFFC41A3B),
        backgroundColor: Color(0xFFFBE0E6),
        animationCurve: Curves.easeOutBack,
        animationDuration: Duration(seconds: 1),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        items: <Widget>[
          Icon(Icons.home, size: 28.0, color: Colors.orange),
          Icon(Icons.category, size: 28.0, color: Colors.green),
          Icon(Icons.search, size: 28.0, color: Colors.black),
          Icon(Icons.shopping_cart, size: 28.0, color: Colors.yellow),
          Icon(Icons.person, size: 28.0, color: Colors.black54),
        ],
      ),
    );
  }
}
