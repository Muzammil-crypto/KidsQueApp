class QuizHistory {
  int quizId = 0;
  int categoryId = 0;
  String quizTitle = "";
  String score = "";
  double correct = 0;
  int total = 0;
  String timeTaken = "";
  DateTime quizDate = DateTime.now();
  String status = "";

  QuizHistory(this.quizId, this.quizTitle, this.categoryId, this.score,
      this.correct, this.total, this.timeTaken, this.quizDate, this.status);

  QuizHistory.fromJson(dynamic json) {
    quizId = json["quizId"];
    quizTitle = json["quizTitle"];
    categoryId = json["categoryId"];
    score = json["score"];
    correct = json["correct"];
    total = json["total"];
    timeTaken = json["timeTaken"];
    quizDate = json["quizDate"];
    status = json["status"];
  }

  static jsonToObject(dynamic json) {
    return QuizHistory(
        json["quizId"],
        json["quizTitle"],
        json["categoryId"],
        json["score"],
        json["correct"],
        json["total"],
        json["timeTaken"],
        DateTime.parse(json["quizDate"]),
        json["status"]);
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["quizId"] = quizId;
    map["quizTitle"] = quizTitle;
    map["categoryId"] = categoryId;
    map["score"] = score;
    map["correct"] = correct;
    map["total"] = total;
    map["timeTaken"] = timeTaken;
    map["quizDate"] = quizDate.toIso8601String();
    map["status"] = status;
    return map;
  }
}
