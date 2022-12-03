import 'package:nocu/src/core/constants/parameters.dart';

class Task {
  String? title;
  String? description; //el contenido de la nota
  String? date;
  // Los distintos timpos de enlaces de la app
  List<String>? urls;
  StateTask state;

  Task({
    this.title,
    this.date,
    this.description,
    this.urls,
    this.state = StateTask.Create,
  });
}