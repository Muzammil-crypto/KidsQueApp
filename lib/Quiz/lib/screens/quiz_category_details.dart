import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/theme_helper.dart';
import 'package:sign_in_interface/Quiz/lib/models/category.dart';
import 'package:sign_in_interface/Quiz/lib/models/quiz.dart';
import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';

// ignore: must_be_immutable
class QuizCategoryDetailsScreen extends StatefulWidget {
  static const routeName = '/categoryDetails';
  late Category category;

  QuizCategoryDetailsScreen(this.category, {Key? key}) : super(key: key);

  @override
  _QuizCategoryDetailsScreenState createState() =>
      _QuizCategoryDetailsScreenState(category);
}

class _QuizCategoryDetailsScreenState extends State<QuizCategoryDetailsScreen> {
  late Category category;

  _QuizCategoryDetailsScreenState(this.category);

  late List<Quiz> quizList = [];
  @override
  void initState() {
    var quizStore = QuizStore();
    quizStore.loadQuizListByCategoryAsync(category.id).then((value) {
      setState(() {
        quizList = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          alignment: Alignment.center,
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: Column(
            children: [
              screenHeader(category),
              Expanded(
                child: categoryDetailsView(quizList),
              ),
            ],
          ),
        ),
      ),
    );
  }

  screenHeader(Category category) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, left: 5),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(144, 145, 143, 143)),
            child: GestureDetector(
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          // Text(
          //   "${category.name} Quiz",
          //   style: TextStyle(),
          // ),
          Container(
            margin: EdgeInsets.only(
              top: 5,
              left: 10,
              right: MediaQuery.of(context).size.width / 12,
            ),
            decoration: BoxDecoration(
                // color: Colors.yellow.shade900,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "${category.name} Quiz",
                style: TextStyle(
                    fontFamily: "ShinyBalloonDemo",
                    fontSize: 30.0,
                    color: Colors.yellow.shade900,
                    //  fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                    fontStyle: FontStyle.italic),
              ),
            ),
            height: MediaQuery.of(context).size.height / 8,
            width: MediaQuery.of(context).size.width / 1.4,
          ),
        ],
      ),
    );
  }

  categoryDetailsView(List<Quiz> quizList) {
    return SingleChildScrollView(
      child: Column(
        children: quizList
            .map((quiz) => GestureDetector(
                  child: categoryDetailsItemView(quiz),
                  onTap: () {
                    Navigator.of(context).pushNamed("/quiz", arguments: quiz);
                  },
                ))
            .toList(),
      ),
    );
  }

  categoryDetailsItemBadge(Quiz quiz) {
    return Container(
      alignment: Alignment.topRight,
      child: Container(
        width: 150,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: ThemeHelper.primaryColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            )),
        child: Text(
          "${quiz.questions.length} Questions",
          style: TextStyle(color: Colors.white, fontFamily: "Flavors"),
        ),
      ),
    );
  }

  categoryDetailsItemView(Quiz quiz) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(bottom: 20),
      decoration: ThemeHelper.roundBoxDeco(),
      child: Stack(
        children: [
          categoryDetailsItemBadge(quiz),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: ThemeHelper.roundBoxDeco(
                      color: Color(0xffE1E9F6), radius: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      image: AssetImage(quiz.imagePath.isEmpty == true
                          ? category.imagePath
                          : quiz.imagePath),
                      width: 130,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          quiz.title,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontFamily: "BubblegumSans"),
                        ),
                        Text(
                          quiz.description,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: "BubblegumSans"),
                        ),
                      ]),
                ),
              ],
            ),
            height: 150,
          ),
        ],
      ),
    );
  }
}
