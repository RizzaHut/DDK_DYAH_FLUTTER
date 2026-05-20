import 'package:flutter/material.dart';
import 'package:http_request_2/models/toDo.dart';

class ToDoDetail extends StatelessWidget {
  final ToDo todo;
  ToDoDetail(this.todo);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("Detail To Do: ${todo.id}")),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height / 2.5,
                child: Image.network(
                  'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg',
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama Album: ${todo.title}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Album ID: ${todo.id}"),
                        SizedBox(width: 10),
                        Text("User ID: ${todo.userId}"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
