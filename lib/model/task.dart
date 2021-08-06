class Task{
  late int id;
  late String name;
  late String description;

  Task({required this.id , required this.name , required this.description});

  @override
  String toString() {
    return 'Task{id: $id, name: $name, description: $description}';
  }
}