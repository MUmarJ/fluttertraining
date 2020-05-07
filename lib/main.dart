import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                child: ListTile(
              leading: Icon(Icons.menu),
              title: Text('Search mail'),
              trailing: CircleAvatar(
                backgroundColor: Colors.amber[300],
              ),
            )),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            child: Text(
              'PRIMARY',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red[300],
            ),
            title: Text('Header text...'),
            subtitle: Text('Email body here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('7 May'), Icon(Icons.star)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple[300],
            ),
            title: Text('Header text...'),
            subtitle: Text('Email body here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('7 May'), Icon(Icons.star)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.black54,
            ),
            title: Text('Header text...'),
            subtitle: Text('Email body here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('7 May'), Icon(Icons.star)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.indigo[300],
            ),
            title: Text('Header text...'),
            subtitle: Text('Email body here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('7 May'), Icon(Icons.star)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.lightGreen[300],
            ),
            title: Text('Header text...'),
            subtitle: Text('Email body here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('7 May'), Icon(Icons.star)],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(Text('Hello!'));
          },
          child: Icon(Icons.add)),
    );
  }
}
