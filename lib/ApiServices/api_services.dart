
import 'dart:convert';

import 'package:http/http.dart' as http;

 Future getData() async {
    final url = 'https://gxujp.localto.net/user/v4.php?action=get_faqcontent';
    final headers = {'Cookie': 'localtonet-skip-warning=true'};


    try {
      final response = await http.get(Uri.parse(url), headers: headers);
      if (response.statusCode == 200) {
        print(response.body);
        return jsonDecode(response.body)["data"];
      } else {
        print('Request failed with status: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      return "null";

    }
  }
