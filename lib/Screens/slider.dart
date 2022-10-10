import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderBanner extends StatefulWidget {
  List<String> imageList;
  SliderBanner({
    Key? key,
    required this.imageList,
  }) : super(key: key);

  @override
  State<SliderBanner> createState() => _SliderBannerState();
}

class _SliderBannerState extends State<SliderBanner> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: isLoading
          ? Center(
              child: Container(
                height: MediaQuery.of(context).size.height / 3.2,
                width: MediaQuery.of(context).size.width / 0.5,
                child: Image(
                  image: AssetImage("assets/ani34.gif"),
                ),
              ),
            )
          : CarouselSlider(
              options: CarouselOptions(
                height: 360,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: widget.imageList
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(10),
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
                      ))
                  .toList(),
            ),
    );
  }
}
