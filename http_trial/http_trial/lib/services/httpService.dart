import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_trial/config/httpConfig.dart';
import 'package:http_trial/models/response.dart';
import 'package:http_trial/models/user.dart';

class HttpService {

  static Future<ResponseData> getSingleUserData (int userId) async {
    var url = Uri.https(HttpConfig.baseUrl,"/api/users/$userId");
    var res =  await http.get(url);
    if(res.statusCode == 200){
      return ResponseData(data: jsonDecode(res.body));
    }
    return ResponseData(error: "Data fetch error with status code ${res.statusCode}", data:{});
}
}