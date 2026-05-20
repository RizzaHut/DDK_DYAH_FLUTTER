import 'package:flutter/material.dart';
import 'package:http_request_2/pages/toDoDetails.dart';
import 'package:http_request_2/service/http_service.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List toDo = [];
  late HttpService service;

  @override
  void initState() {
    super.initState();
    service = HttpService();
    initialize();
  }

  Future initialize() async {
    toDo = await service.getToDo();
    setState(() {
      toDo = toDo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To Do List")),
      body: ListView.builder(
        itemCount: toDo.length,
        itemBuilder: (context, position) {
          return Card(
            child: ListTile(
              leading: Image.network(
                "https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg",
              ),
              title: Text(toDo[position].title),
              subtitle: Text("ID: ${toDo[position].id}"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ToDoDetail(toDo[position])),
                );
              },
            ), // ListTile
          ); // Card
        },
      ), // ListView.builder
    ); // Scaffold
  }
}
