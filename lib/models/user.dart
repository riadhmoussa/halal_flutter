class User {
  int? id;
  String? firstName;
  String? lastName;
  Null? photo;
  String? phone;
  String? lang;
  String? role;
  String? email;
  int? active;
  int? msgNotReaded;
  Null? code;
  int? verifyPhoneConfirmed;
  bool? isTrusted;
  Null? emailVerifiedAt;
  int? isWhatsUpEnabled;
  int? rate;
  Null? deletedAt;
  int? createdAt;
  int? updatedAt;
  int? nbFollowers;

  User(
      {this.id,
        this.firstName,
        this.lastName,
        this.photo,
        this.phone,
        this.lang,
        this.role,
        this.email,
        this.active,
        this.msgNotReaded,
        this.code,
        this.verifyPhoneConfirmed,
        this.isTrusted,
        this.emailVerifiedAt,
        this.isWhatsUpEnabled,
        this.rate,
        this.deletedAt,
        this.createdAt,
        this.updatedAt,
        this.nbFollowers});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    photo = json['photo'];
    phone = json['phone'];
    lang = json['lang'];
    role = json['role'];
    email = json['email'];
    active = json['active'];
    msgNotReaded = json['msg_not_readed'];
    code = json['code'];
    verifyPhoneConfirmed = json['verifyPhoneConfirmed'];
    isTrusted = json['isTrusted'];
    emailVerifiedAt = json['email_verified_at'];
    isWhatsUpEnabled = json['IsWhatsUpEnabled'];
    rate = json['rate'];
    deletedAt = json['deleted_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    nbFollowers = json['nb_followers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['photo'] = this.photo;
    data['phone'] = this.phone;
    data['lang'] = this.lang;
    data['role'] = this.role;
    data['email'] = this.email;
    data['active'] = this.active;
    data['msg_not_readed'] = this.msgNotReaded;
    data['code'] = this.code;
    data['verifyPhoneConfirmed'] = this.verifyPhoneConfirmed;
    data['isTrusted'] = this.isTrusted;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['IsWhatsUpEnabled'] = this.isWhatsUpEnabled;
    data['rate'] = this.rate;
    data['deleted_at'] = this.deletedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['nb_followers'] = this.nbFollowers;
    return data;
  }
}