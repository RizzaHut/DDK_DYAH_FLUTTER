class ToDo {
  int userId;
  int id;
  String title;
  bool completed;

  ToDo(this.userId, this.id, this.title, this.completed);

  ToDo.fromJson(Map<String, dynamic> parsedJson)
    : userId = parsedJson['userId'],
      id = parsedJson['id'],
      title = parsedJson['title'],
      completed = parsedJson['completed'];
}
