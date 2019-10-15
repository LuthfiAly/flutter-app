import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: TampilanPertama(),
    );
  }
}

class TampilanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('First Route'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Route 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TampilanKedua()),
            );
          },
        ),
      ),
    );
  }
}

class TampilanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Route 2"),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Route 3"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TampilanKetiga()));
              },
            ),
            RaisedButton(
              child: Text("Route 1"),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}

class TampilanKetiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Route 3"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("Route 2"),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
