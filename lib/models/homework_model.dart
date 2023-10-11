class Homework {
  String title;
  String description;
  DateTime dueDate;
  List<String> fileNames;
  List<String> fileUrls;

  Homework({
    required this.title,
    required this.description,
    required this.dueDate,
    required this.fileNames,
    required this.fileUrls,
  });
}
