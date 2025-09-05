import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class LocationService {
  final String key = "AIzaSyCz2POPFxVwxWZqj45fSLdtDIBrnCHeSLI";
  Future<String> getPlaceId(String input) async {
    final String url =
        "https://maps.googleapis.com/maps/api/place/findplacefromtext/json?$input&inputtype=textquery&key=$key";
    var response = await http.get(Uri.parse(url));

    print("response: ${response.body}");

    var json = convert.jsonDecode(response.body);
    var placeId = json["candidates"][0]["place_id"] as String;
    print(placeId);
    return placeId;
  }
  // Future<Map<String, dynamic>> getPlace(String input) async {}
}
