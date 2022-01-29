


import 'dart:convert';

import 'package:http/http.dart' as http;


class NetworkHelper
{
  NetworkHelper(this.url);
  final String url;

   getData() async {
    http.Response response = await http.post(Uri.parse(url));
    if (response.statusCode== 200) {

      String data = response.body;
      var decodedData = jsonDecode(data);
      print(decodedData['rate']);
    } else {
      print(response.statusCode);
    }
  }
}
