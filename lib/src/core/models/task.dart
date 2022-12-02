class Task {
  String? title;
  String? description; //el contenido de la nota
  String? date;
  // Los distintos timpos de enlaces de la app
  List<String>? urls;

  Task({
    this.title,
    this.date,
    this.description,
    this.urls,
  });
}