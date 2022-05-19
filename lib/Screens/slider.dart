import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderBanner extends StatelessWidget {
  final List<String> imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0OXUTDSiJ6OD8WuRJcOJYuwO0XZxG1-IyJA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyHhl2fHYKxLVPxuVTZN-gZTAHtiRPPi5-cA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8YHRIf1f83CO5CrU3ssyc0BPdKXyt58cI0g&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
          child: CarouselSlider(
        options: CarouselOptions(
          height: 360,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlay: true,
        ),
        items: imageList
            .map((e) => ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    //  height: 300,
                    //   width: MediaQuery.of(context).size.width,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          e,
                          width: 1050,
                          height: 400,
                          fit: BoxFit.fill,
                        )
                      ],
                    ),
                  ),
                ))
            .toList(),
      )),
    );
  }
}
