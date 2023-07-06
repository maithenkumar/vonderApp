import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future getData() async {
  final url = 'https://jxt4l.localto.net/restaurant/v1.php?action=getAllFaq';
  final headers = {'Cookie': 'localtonet-skip-warning=true',
    'localtonet-skip-warning': 'true',};

  try {
    final response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      // print(response.body);
      return jsonDecode(response.body);
    } else {
      print('Request failed with status: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    return "null";
  }
}

String apiurl = "https://jxt4l.localto.net/restaurant/v1.php";
sendGetData(
  String endpoint,
  Map<String, String> data, {
  Map<String, String> headers = const {
    'Cookie': 'localtonet-skip-warning=true',
    'localtonet-skip-warning': 'true',
    'Content-type': 'application/json',
    'Accept': 'application/json',
  },
}) async {

  String url = '$apiurl?action=$endpoint&';

  if (endpoint.startsWith("http")) {
    url = endpoint;
  }
  for (var key in data.keys) {
    url += '$key=${data[key]}&';
  }
  final response = await http.post(
    Uri.parse(url),
    headers: headers,
  );

  // if (kDebugMode) {
  //   print(url);
  //   print(headers);
  //   print(response.body);
  //   print(response.statusCode);
  // }
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

// String apiurl = "https://jxt4l.localto.net/restaurant/v1.php";
// sendGetData(
//   String endpoint,
//   Map<String, String> data, {
//   Map<String, String> headers = const {
//     'Cookie': 'localtonet-skip-warning=true',
//     'localtonet-skip-warning': 'true',
//     'Content-type': 'application/json',
//     'Accept': 'application/json',
//   },
// }) async {
//   String url = '$apiurl?action=$endpoint&';
//   try {
//     if (endpoint.startsWith("http")) {
//       url = endpoint;
//     }
//     for (var key in data.keys) {
//       url += '$key=${data[key]}&';
//     }
//     final response = await http.post(
//       Uri.parse(url),
//       headers: headers,
//     );

//     if (kDebugMode) {
//       print(url);
//       print(headers);
//       print(response.body);
//       print(response.statusCode);
//     }
//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   } catch (e) {
//     if (kDebugMode) {
//       print(e);
//     }
//   }
// }
