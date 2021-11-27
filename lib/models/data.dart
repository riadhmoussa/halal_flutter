import 'package:halal_flutter/models/user.dart';

class Data {
  String? tokenType;
  String? token;
  int? expiresIn;
  bool? needUpdate;
  User? user;

  Data(
      {this.tokenType, this.token, this.expiresIn, this.needUpdate, this.user});

  Data.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    token = json['token'];
    expiresIn = json['expires_in'];
    needUpdate = json['needUpdate'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token_type'] = this.tokenType;
    data['token'] = this.token;
    data['expires_in'] = this.expiresIn;
    data['needUpdate'] = this.needUpdate;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}