import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:halal_flutter/common/dialog/custom_alert_dialog.dart';
import 'package:halal_flutter/components/textview.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:halal_flutter/models/user.dart';
import 'package:halal_flutter/ui/auth/viewmodel/login_view_model.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:halal_flutter/ui/auth/views/register_page.dart';
import 'package:halal_flutter/ui/home/home_page.dart';

class VerificationPhoneNumber extends StatefulWidget {
  final String phoneNumber;

  const VerificationPhoneNumber({Key? key, required this.phoneNumber})
      : super(key: key);

  @override
  _VerificationPhoneNumberState createState() =>
      _VerificationPhoneNumberState();
}

class _VerificationPhoneNumberState extends State<VerificationPhoneNumber> {
  LoginViewModel loginViewModel = new LoginViewModel();

  SharedPreferences? pref;

  var savedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: TextView(left: 60),
      body: SafeArea(
          child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () => {Navigator.pop(context)})),
          Container(
            margin: EdgeInsets.fromLTRB(25, 50, 25, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: const Text(
                  "Mobile Number Verification",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    flex: 2,
                    child: Text(
                      "A code message has been sent to your phone number",
                      maxLines: 3,
                      softWrap: true,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      widget.phoneNumber,
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(fontSize: 14, color: Colors.green),
                    ),
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: VerificationCode(
              digitsOnly: true,
              itemSize: 60,
              textStyle: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              underlineColor: Colors.black,
              underlineWidth: 2,
              length: 4,
              onCompleted: (String value) {
                loginViewModel
                    .fetchVerifyPhone(widget.phoneNumber, value)
                    .then((value) async => {
                          if (loginViewModel.response!.success == true)
                            {
                              pref = await SharedPreferences(),
                              // savedUser = User.fromJson(loginViewModel.response!.);
                              /*   pref.save('user', json.encode(savedUser)),*/
                              pref!.save('token',
                                  loginViewModel.response!.data!.token),

                              if (loginViewModel.response!.data != null &&
                                  loginViewModel.response!.data!.user == null)
                                {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const RegisterPage()),
                                  )
                                }
                              else
                                {
                                  print("Moussa"),
                                  print(json.encode(loginViewModel.response!.data!.user)),
                                  pref!.save(
                                      'user',json.encode(loginViewModel.response!.data!.user) ),
                                 Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const HomePage()),
                                  )

                                }
                            }
                          else
                            {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return CustomDialogBox(
                                      title: loginViewModel.response!.message!,
                                    );
                                  })
                            }
                        });
              },
              onEditing: (bool value) {
                setState(() {});
              },
            ),
          )
        ],
      )),
    );
  }
}
