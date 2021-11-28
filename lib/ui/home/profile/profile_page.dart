import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/second_custom_bar.dart';
import 'package:halal_flutter/common/dialog/confirmation_dialog.dart';
import 'package:halal_flutter/components/item_setting.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:halal_flutter/models/user.dart';
import 'package:halal_flutter/ui/home/profile/banksAccountPage.dart';
import 'package:halal_flutter/ui/home/profile/contact_us_page.dart';
import 'package:halal_flutter/ui/user/followers_list_page.dart';
import 'package:halal_flutter/ui/home/profile/terms_condition_page.dart';

import 'claims_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late User user;
  String firstName = "";
  String lastName = "";
  String email = "";
  String imageProfile = "https://via.placeholder.com/140x100";

  @override
  void initState() {
    super.initState();
    SharedPreferences prefs = SharedPreferences();
    var userObject = prefs.read('user');
    user = User.fromJson(json.decode(userObject));
    this.firstName = user.firstName!;
    this.lastName = user.lastName!;
    this.email = user.email!;
    this.imageProfile = (user.photo != null
        ? user.photo
        : "https://via.placeholder.com/140x100")!;
    if (user.photo != null) {
      this.imageProfile = user.photo!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SecondCustomBar("My Account"),
        body: Container(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 120,
                      child: CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(this.imageProfile)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              this.firstName + " " + this.lastName,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                          Container(
                              child: Text(
                            this.email,
                            textDirection: TextDirection.ltr,
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(color: Colors.grey),
              Container(
                margin: EdgeInsets.fromLTRB(30.0, 15, 30.0, 15),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My App",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              ItemSetting(
                title: "Follow-up",
                subTitle: "See the list of users I'm following",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FollowersListPage()),
                  )
                },
              ),
              ItemSetting(
                title: "Complaints",
                subTitle: "Keep track of the complaints you have raised",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ClaimsPage()),
                  )
                },
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(30.0, 15, 30.0, 15),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "The support",
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ),
              ItemSetting(
                title: "Contact us",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactUsPage()),
                  )
                },
              ),
              ItemSetting(
                title: "Terms and conditions apply",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TermsConditionPage()),
                  )
                },
              ),
              ItemSetting(
                title: "Our bank accounts",
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BanksAccountPage()),
                  )
                },
              ),
              ItemSetting(
                title: "Logout",
                onPressed: () => {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return ConfirmationDialog();
                      })
                },
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        )));
  }
}
