import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/cityModel.dart';

class CityDetails extends StatefulWidget {
  String id;
  CityDetails({Key? key, required this.id}) : super(key: key);

  @override
  State<CityDetails> createState() => _CityDetailsState();
}

class _CityDetailsState extends State<CityDetails> {
  CityModel _cityModel = CityModel();

  @override
  void initState() {
    getData();
    super.initState();
  }

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                child: Column(
                  children: [
                    Text(
                      _cityModel.title!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      _cityModel.description!,
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  void getData() async {
    try {
      var response = await Dio().get(
          "https://pakque2.herokuapp.com/api/cities/${widget.id}?populate=*");
      print(response.data);
      _cityModel.title = response.data['data']['attributes']["name"];
      _cityModel.description =
          response.data['data']['attributes']['description'];
      _cityModel.videoLink =
          response.data['data']['attributes']['Video'] == null
              ? ""
              : response.data['data']['attributes']["Video"];
      response.data["data"]["attributes"]["Image"]["data"] != null
          ? response.data["data"]["attributes"]["Image"]["data"].forEach((e) {
              e["attributes"]["url"] != null
                  ? _cityModel.images.add(e["attributes"]["url"])
                  : null;
            })
          : null;

      setState(() {
        isLoading = false;
      });
    } on DioError catch (e) {
      print(e.response);
    }
  }
}
