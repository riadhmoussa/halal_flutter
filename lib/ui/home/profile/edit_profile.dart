import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/third_custom_bar.dart';
import 'package:halal_flutter/common/dialog/options_image_dialog.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/input_edit.dart';
import 'package:halal_flutter/helper/camera_tools.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:halal_flutter/models/user.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var checkedValue = true;
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
    if (user.photo != null) {
      this.imageProfile = user.photo!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ButtonSubmit(
        enabled: true,
        nameButton: "Save",
        onPressed: () => {},
      ),
      backgroundColor: Colors.white,
      appBar: ThirdCustomBar("Edit my account"),
      body: SafeArea(
          child: Column(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/person.png"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return OptionsImageDialog(
                                onPressedCamera: ()=>{
                                  CameraTools.getFromCamera()
                                },
                                onPressedGallery: ()=>{
                                  CameraTools.getFromGallery()
                                },
                              );
                            });
                      },
                      child: Image.asset(
                        'images/icon_camera.png',
                        width: 30,
                        height: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Moussa Riadh",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            "mishaal2020@gmail.com",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Divider(),
          InputEdit(label: "FirstName", value: this.firstName),
          Divider(),
          InputEdit(label: "LastName", value: this.lastName),
          Divider(),
          InputEdit(label: "E-mail", value: this.email),
          Divider(),
          InputEdit(label: "Phone number", value: "+96621456987"),
          Divider(),
          Container(
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text(
                "You can talk to me on WhatsApp",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14),
              ),
              value: checkedValue,
              onChanged: (newValue) {},
            ),
          ),
          Divider(),
        ],
      )),
    );
  }
}
