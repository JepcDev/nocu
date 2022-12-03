
import '../constants/parameters.dart';

class Note {
  String? title;
  String? date;
  String? description; //el contenido de la nota
  bool private;
  // Los distintos timpos de enlaces de la app
  List<String>? urls;
  String? image;
  TypeNote type;
  StateNote state;


  Note({
    this.title,
    this.date,
    this.description,
    this.private = false,
    this.image,
    this.urls,
    this.type =TypeNote.Text,
    this.state = StateNote.Visible,
  });
}


  Note note = Note(
    title: "My first note",
    description: "this is my first note",
    date: "02-12-2022",
  );
