import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  Widget _buildTask(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Task Title'),
            subtitle: Text('Feb 8, 2020 High'),
            trailing: Checkbox(
              onChanged: (value) {
                print(value);
              },
              activeColor: Theme.of(context).primaryColor,
              value: true,
            ),
          ),
          Divider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add),
        onPressed: () => print(
            'Naivgate to add task screen'), // Identifies what the future action is goind to be
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My Tasks',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      '1 of 10',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              );
            }
            return _buildTask(
                index); // These are the future containers for the tasks
          },
        ),
      ),
    );
  }
}
