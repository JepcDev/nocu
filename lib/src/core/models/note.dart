class Note {
  String? title;
  String? date;
  String? description; //el contenido de la nota
  bool private;
  // Los distintos timpos de enlaces de la app
  List<String>? urls;
  String? img;

  Note({
    this.title,
    this.date,
    this.description,
    this.private = false,
    this.img,
    this.urls,
  });
}


  Note note = Note(
    title: "My first note",
    description: "this is my first note",
    date: "02-12-2022",
  );
