import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          brightness: Brightness.dark),
      home: MyHomePage(),
    );
  }
}

class TodoList extends StatefulWidget {
  TodoList({
    Key key,
  }) : super(key: key);

  @override
  TodoListState createState() => TodoListState();
}

class TodoListState extends State<TodoList> {
  Map<String, bool> todos = {
    'Attend Class': false,
    'Do Assignment': true,
  };
  final textController = TextEditingController();

  //Unusued in this case?
  // void dispose() {
  //   textController.dispose();
  //   super.dispose();
  // }

  handleTodo() async {
    await showDialog<String>(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            contentPadding: const EdgeInsets.all(16.0),
            content: new Row(children: <Widget>[
              new Expanded(
                child: new TextField(
                  controller: textController,
                  autofocus: true,
                  decoration: new InputDecoration(
                      labelText: 'Task', hintText: 'Wash the dishes'),
                ),
              ),
            ]),
            actions: <Widget>[
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    textController.text = '';
                  },
                  child: const Text('Cancel')),
              new FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                    addToTodos(textController.text);
                  },
                  child: const Text('Submit')),
            ],
          );
        });
  }

  addToTodos(String text) {
    setState(() {
      todos[textController.text] = false;
    });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: todos.keys.map((String todo) {
          return new CheckboxListTile(
              title: new Text(todo),
              value: todos[todo],
              onChanged: (bool isDone) {
                setState(() {
                  todos[todo] = isDone;
                });
              },
              secondary: IconButton(
                  icon: Icon(
                    Icons.restore_from_trash,
                    color: Colors.red.shade400,
                  ),
                  onPressed: () {
                    setState(() {
                      todos.remove(todo);
                    });
                  }));
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            handleTodo();
          },
          child: Icon(Icons.add)),
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Todo List',
                textAlign: TextAlign.center,
              ),
            )),
      ),
      body: TodoList(),
    );
  }
}
