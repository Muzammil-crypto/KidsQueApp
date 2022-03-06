import 'package:flutter/material.dart';

// ignore: camel_case_types
class topicDetails {
  final String image, topic, heading, subHeading, history, span;
  final int id;
  final Color color;

  topicDetails({
    this.image,
    this.topic,
    this.heading,
    this.subHeading,
    this.history,
    this.span,
    this.id,
    this.color,
  });
}

List<topicDetails> topicDetail = [
  topicDetails(
      id: 0,
      color: Color.fromARGB(172, 5, 8, 190),
      image: "ccc.png",
      topic: "Culture",
      heading: "bbb",
      subHeading:
          "Culture can be defined as all the ways of life including arts, beliefs and institutions of a population that are passed down from generation to generation. Culture has been called the way of life for an entire society. As such, it includes codes of manners, dress, language, religion, rituals, art.",
      history: "1947 to 2022",
      span: "jjjjjj")
];
