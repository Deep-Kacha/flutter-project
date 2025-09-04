import 'package:http/http.dart' as http;
import '../models/dog.dart';

class ApiCall {
  static Future<List<String>> fetchDogList() async {
    List<String> dogs = [];
    var request = http.Request(
      'GET',
      Uri.parse('https://dog.ceo/api/breeds/list/all'),
    );

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var resp = await response.stream.bytesToString();
      print(resp);
      var dogResponse = dogResponseFromJson(resp);
      dogs = dogResponse.message!.toJson().keys.toList();
      // dogs = jsonDecode().keys.toList();
    } else {
      print(response.reasonPhrase);
    }
    return dogs;
  }
}
