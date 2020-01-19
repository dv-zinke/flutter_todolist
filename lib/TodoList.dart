import 'package:flutter/material.dart';
import 'package:flutter_todolist/AddItemScreen.dart';
import 'package:flutter_todolist/FloatButton.dart';

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  List<String> _todoItems = [];

  Widget _buildTodoList() {
    // ignore: missing_return
    return ListView.builder(itemBuilder: (context, index) {
        if(index < _todoItems.length) {
          return _buildTodoItem(_todoItems[index]);
        }

    });
  }

  Widget _buildTodoItem(String todoText){
    return ListTile(
      title: Text(todoText),
    );
  }
  _addTodoItem(String item) {
    setState(() {
      _todoItems.add(item);
    });
  }


  _test() async {
    Map results = await Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context){
        return AddItemScreen();
      }
    ));

    if(results != null && results.containsKey('item')) {
      _addTodoItem(results['item']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dd'),
      ),
      body: _buildTodoList(),
      floatingActionButton: FloatButton(onPressed:_test),
    );
  }
}
