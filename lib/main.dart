import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Card(
      child: new Column(
        children: <Widget>[
          new Image.asset('assets/food.jpeg'),
          new Padding(
            padding: new EdgeInsets.all(15.0),
          )
        ],
      ),
    );
  }
}

class _MyAppState extends State<MyApp> {
  List<Widget> cards = new List.generate(10, (i) =>
    new CustomCard()
  );
    
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      title: 'Welcome',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Scrum'),
        ),
        body: new Container(
          child: new ListView(children: cards,
          ),
        )
      )
    );
  }
}
