import 'package:flutter/material.dart';

class topicDetails {
  final String image, topic, heading, subHeading, history, heading2, span;
  final int id;
  final Color color;

  topicDetails({
    this.image,
    this.topic,
    this.heading,
    this.heading2,
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
      color: Color.fromARGB(174, 255, 64, 128),
      image: "ccc.png",
      topic: "Culture",
      heading: "History",
      subHeading:
          "Culture can be defined as all the ways of life including arts, beliefs and institutions of a population that are passed down from generation to generation. Culture has been called the way of life for an entire society. As such, it includes codes of manners, dress, language, religion, rituals, art.",
      history:
          "Culture can be defined as all the ways of life including arts, beliefs and institutions of a population that are passed down from generation to generation. Culture has been called the way of life for an entire society. As such, it includes codes of manners, dress, language, religion, rituals, art.",
      heading2: "Span",
      span:
          "Culture can be defined as all the ways of life including arts, beliefs and institutions of a population that are passed down from generation to generation. Culture has been called the way of life for an entire society. As such, it includes codes of manners, dress, language, religion, rituals, art.")
];
