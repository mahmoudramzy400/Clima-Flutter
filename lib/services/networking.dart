import 'dart:convert' as json;

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      var decodedData = json.jsonDecode(data);

      return decodedData;
    } else {
      print(response.statusCode);
    }
  }
}
