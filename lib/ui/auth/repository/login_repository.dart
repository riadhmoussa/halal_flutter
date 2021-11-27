import 'package:halal_flutter/common/constants.dart';
import 'package:halal_flutter/common/toasts/custom_toast.dart';
import 'package:halal_flutter/helper/requests_interceptor.dart';
import 'package:halal_flutter/models/response.dart';
import 'dart:collection';
import 'dart:convert';
import 'package:http/http.dart' as http;


class WebserviceAuth {
  Future<Response> fetchCheckPhone(String phoneNumber) async {
    final url = baseUrl+"auth/checkPhone";
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'phone': phoneNumber,
      }),
    );
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body) as LinkedHashMap<String, dynamic>;
      final finalResponse = Response.fromJson(body);
      return finalResponse;
    } else {
      throw Exception("Unable to perform request!");
    }
  }


  Future<Response> fetchVerifyPhone(String phoneNumber,String code){
   var  body=  jsonEncode(<String, String>{
      'phone': phoneNumber,
      "code":code
    });
   return DioRequestsInterceptor.dio
    .post(baseUrl+"auth/verify",data: body)
   .then((value) {
        return (Response.fromJson(value.data));
    });

  }

  Future<Response> fetchSignUp(String firstName,String lastName){
    var  body=  jsonEncode(<String, String>{
      'firstName': firstName,
      "lastName":lastName
    });
    print("Tttttttttttttttttttt");
    print(body);
    return DioRequestsInterceptor
        .dio
        .post("http://halal-api.wi-mobi.dev/api/auth/signup",data: body)
        .then((value)  {
          print("Mouusa Test");
          print(Response.fromJson(value.data).message);
          print(Response.fromJson(value.data).success);
        return (Response.fromJson(value.data));
    });
  }

}