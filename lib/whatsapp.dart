import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final titleString = 'WhatsApp';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: titleString,
        theme: ThemeData(
            primarySwatch: Colors.teal,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            brightness: Brightness.light),
        home: DefaultTabController(
          length: 4,
          child: MyHomePage(title: titleString),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final generaltextStyle =
        TextStyle(fontWeight: FontWeight.w300, color: Colors.green[300]);
    final avatarBackgroundColor = Colors.teal[400];
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(widget.title),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.photo_camera)),
            Tab(
              text: 'CHATS',
            ),
            Tab(text: 'STATUS'),
            Tab(text: "CALLS")
          ],
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Icon(Icons.photo_camera),
          ListView(
            children: <Widget>[
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: avatarBackgroundColor,
                  child: Icon(Icons.person),
                ),
                title: Text('Someone'),
                subtitle: Text('Forward this to 20 more people for sawab'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('10:37 pm', style: generaltextStyle)],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: avatarBackgroundColor,
                  child: Icon(Icons.person),
                ),
                title: Text('No one'),
                subtitle: Text('please send me Rs1000 on this number'),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[Text('9:33 pm', style: generaltextStyle)],
                ),
              ),
            ],
          ),
          Text('Status'),
          Text('CALLS'),
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
