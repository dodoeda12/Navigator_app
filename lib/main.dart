import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Projectttttt',
    home: FirstPage(),
  ));
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FirstPage'),
        ),
        body: new Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('SecondPage'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage("SAYLES RULES")),
                );
              },
            ),
            RaisedButton(
                child: Text('ThirdPage'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ThirdPage("SAYLES RULES")),
                  );
                }),
            RaisedButton(
                child: Text('LastPage'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LastPage("SAYLES RULES")),
                  );
                }),
          ],
        )));
  }
}

class SecondPage extends StatelessWidget {

  final String pageText;

  SecondPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SecondPage"),
        ),
        body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(pageText),
                ),
              ]),
        ));
  }
}

class ThirdPage extends StatelessWidget {

  final String pageText;

  ThirdPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ThirdPage"),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(pageText),
        ),
      ]),
    ));
  }
}

class LastPage extends StatelessWidget {

  final String pageText;

  LastPage(this.pageText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("LastPage"),
        ),
        body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(pageText),
                ),
              ]),
        ));
  }
}
