import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_interface/Models/provinceModel.dart';

class ProvinceDetailScreen extends StatefulWidget {
  int id;
  ProvinceDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  State<ProvinceDetailScreen> createState() => _ProvinceDetailScreenState();
}

class _ProvinceDetailScreenState extends State<ProvinceDetailScreen> {
  ProvinceModel provinceModel = ProvinceModel("", "", "");
  bool isLoading = true;
  bool isFound = true;
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : isFound
                ? Container(
                    child: Column(
                      children: [
                        Text(
                          "${provinceModel.title}",
                          style: TextStyle(fontSize: 50),
                        ),
                        Text("${provinceModel.description}"),
                      ],
                    ),
                  )
                : Text("Error Loading data"),
      ),
    );
  }

  void getData() async {
    try {
      var response = await Dio()
          .get("https://pakque2.herokuapp.com/api/cultures/${widget.id}");
      print(response.data);
      provinceModel.title = response.data['data']['attributes']['name'];
      provinceModel.description =
          response.data['data']['attributes']["description"];
      provinceModel.videoLink =
          response.data['data']['attributes']['video'] == null
              ? ""
              : response.data['data']['attributes']['video'];
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
      setState(() {
        isLoading = false;
        isFound = false;
      });
    }
  }
}
