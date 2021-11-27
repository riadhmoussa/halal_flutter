import 'package:halal_flutter/models/response.dart';
import 'package:halal_flutter/ui/auth/repository/login_repository.dart';

class LoginViewModel {
  Response? response;

  Future<void> fetchCheckPhone(String phoneNumber) async {
    final apiResult = await WebserviceAuth().fetchCheckPhone(phoneNumber);
    this.response = apiResult;
  }

  Future<void> fetchVerifyPhone(String phoneNumber ,String code) async{
    final apiResult = await WebserviceAuth().fetchVerifyPhone(phoneNumber, code);
    this.response = apiResult;
  }

  Future<void> fetchSignUp(String firstName ,String lastName) async{
    final apiResult = await WebserviceAuth().fetchSignUp(firstName, lastName);
    this.response = apiResult;
  }
}