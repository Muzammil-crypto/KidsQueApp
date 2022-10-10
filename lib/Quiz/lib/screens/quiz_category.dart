import 'dart:core';

import 'package:flutter/material.dart';
import 'package:sign_in_interface/Quiz/lib/common/theme_helper.dart';
import 'package:sign_in_interface/Quiz/lib/models/category.dart';
import 'package:sign_in_interface/Quiz/lib/screens/quiz_category_details.dart';
import 'package:sign_in_interface/Quiz/lib/stores/quiz_store.dart';

class QuizCategoryScreen extends StatefulWidget {
  static const routeName = '/quizCategory';
  const QuizCategoryScreen({Key? key}) : super(key: key);

  @override
  _QuizCategoryScreenState createState() => _QuizCategoryScreenState();
}

class _QuizCategoryScreenState extends State<QuizCategoryScreen> {
  late List<Category> categoryList = [];
  @override
  void initState() {
    var quizStore = QuizStore();
    quizStore.loadCategoriesAsync().then((value) {
      setState(() {
        categoryList = value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          decoration: ThemeHelper.fullScreenBgBoxDecoration(),
          child: Column(
            children: [
              screenHeader(),
              Expanded(
                child: categoryListView(categoryList),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget screenHeader() {
    return Container(
      decoration: BoxDecoration(
          // color: Color.fromARGB(144, 115, 204, 255),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15))),
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 25),
      //margin: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      //alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
              margin: EdgeInsets.only(left: 15),
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromARGB(144, 145, 143, 143)),
              child: GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              )),
          // Container(
          //   margin: EdgeInsets.only(left: 30),
          //   child: Text(
          //     "Quiz Categories",
          //     style: Theme.of(context).textTheme.headline4,
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
              // left: MediaQuery.of(context).size.width / 13,
              right: MediaQuery.of(context).size.width / 12,
            ),
            decoration: BoxDecoration(

                // color: Colors.yellow.shade900,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 40),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontFamily: "ShinyBalloonDemo",
                      fontSize: 32.0,
                      color: Colors.yellow.shade900,
                      // fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height / 10,
            // width: MediaQuery.of(context).size.width / 1.4,
          ),
        ],
      ),
    );
  }

  Widget categoryListView(List<Category> categoryList) {
    return SingleChildScrollView(
      child: Wrap(
        spacing: 20,
        runSpacing: 30,
        direction: Axis.horizontal,
        children: categoryList
            .map((x) => GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: categoryListViewItem(x),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                        QuizCategoryDetailsScreen.routeName,
                        arguments: x);
                  },
                ))
            .toList(),
      ),
    );
  }

  Widget categoryListViewItem(Category category) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.4,
      width: MediaQuery.of(context).size.width / 1.19,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image(
              image: AssetImage(category.imagePath),
              fit: BoxFit.fill,
              color: Color.fromARGB(3, 82, 82, 82).withOpacity(1.0),
              colorBlendMode: BlendMode.softLight,
              width: MediaQuery.of(context).size.width / 1.19,
              height: MediaQuery.of(context).size.height / 3,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 25,
            // child: Text(
            //   category.name,
            //   style: TextStyle(fontSize: 20),

            child: Text(
              category.name,
              style: TextStyle(
                fontFamily: "BubblegumSans",
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                //letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
