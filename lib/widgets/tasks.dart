class Task {
  Task({this.isChecked = false, required this.name});

  late bool isChecked;
  late String name;

  void toggleDone() {
    isChecked = !isChecked;
  }
}
