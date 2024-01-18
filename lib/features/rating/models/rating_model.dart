class RatingModel {
  String studentName;
  double rating;
  String comment;
  String examName;
  String studentImage;

  RatingModel(
      {required this.examName,
      required this.comment,
      required this.studentName,
      required this.studentImage,
      required this.rating});
}
