import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(swap: false),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final bool swap;

  MyHomePage({Key key, this.swap}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var buttonTile = new ListTile(
      title: new RaisedButton(
          child: new Text("Mail+Tel+QR"),
          onPressed: () {
            setState(() {
              swap = !swap;
            });
          }),
    );

    Widget swapWidget;
    if (swap) {
      swapWidget = new CircleAvatar(
        radius: 160,
        backgroundImage: AssetImage('assets/images/QR1.png'),
      );
    } else {
      swapWidget = new CircleAvatar(
        radius: 120,
        backgroundImage: AssetImage('assets/images/ffff.png'),
      );
    }
    var swapTile = new ListTile(
      title: swapWidget,
    );

    return SafeArea(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Aleksander_Vizitka_Alfa"),
        ),
        body: new ListView(
          children: <Widget>[
            buttonTile,
            swapTile,
            Text(
              '+380687915451',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'alexanderdir@gmail.com',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
