class TodoItem {
  final String content;
  final String date = _now();
  bool finished = false;

  TodoItem(this.content);

  static String _now() {
    DateTime now = DateTime.now();
    return "${now.year.toString()}/${now.month.toString().padLeft(2, '0')}/${now.day.toString().padLeft(2, '0')} ${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}";
  }
}
