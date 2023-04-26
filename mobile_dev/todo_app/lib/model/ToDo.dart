class ToDo {
  int id;
  String title;
  bool isDone;

  ToDo({
    required this.id,
    required this.title,
    this.isDone = false,
  });

  static List<ToDo> getToDos() {
    return <ToDo>[
      ToDo(
        id: 1,
        title: 'Create a ToDo App',
        isDone: true
      ),
      ToDo(
        id: 2,
        title: 'Implement JWT Authentication in the WAR App',
        isDone: false
      ),
      ToDo(
        id: 3,
        title: 'Task Title 3',
        isDone: false
      ),
    ];
  }

}