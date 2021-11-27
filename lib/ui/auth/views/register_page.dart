import 'package:flutter/material.dart';
import 'package:halal_flutter/common/dialog/custom_alert_dialog.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/input.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:halal_flutter/ui/auth/viewmodel/login_view_model.dart';
import 'package:halal_flutter/ui/home/home_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var _value = true;
  var firstName = "";
  var lastName = "";
  var email = "";
  var validFirstName = true;
  var validLastName = true;
  LoginViewModel loginViewModel = new LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: ButtonSubmit(
        enabled: true,
        nameButton: "Create an account",
        onPressed: () => {
          if (_value == false)
            {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialogBox(
                      title: "You must agree to the terms and conditions",
                    );
                  })
            }
          else
            {
              setState(() => this.validFirstName = this.firstName.isNotEmpty),
              setState(() => this.validLastName = this.lastName.isNotEmpty),
              if (this.validFirstName && this.validLastName)
                {
                  loginViewModel
                      .fetchSignUp(this.firstName, this.lastName)
                      .then((value) => {
                            if (loginViewModel.response!.success == true)
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const HomePage()),
                                )
                              }
                          })
                }
            }
        },
      ),
      body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 80, 0, 20),
            child: Center(
                child: Image.asset('images/icon.png',
                    width: 130, height: 60, fit: BoxFit.fill)),
          ),
          Input(
              placeholder: "First name",
              valid: this.validFirstName,
              onChanged: (text) => {
                    setState(() => this.firstName = text),
                    if (text.isNotEmpty)
                      {setState(() => this.validFirstName = true)}
                  }),
          Input(
              placeholder: "Last name",
              valid: this.validLastName,
              onChanged: (text) => {
                    setState(() => this.lastName = text),
                    if (text.isNotEmpty)
                      {setState(() => this.validLastName = true)}
                  }),
          Input(
              placeholder: "E-mail",
              onChanged: (text) => {
                    setState(() => this.email = text),
                  }),
          Container(
            margin: EdgeInsets.only(bottom: 25),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Colors.green,
              controlAffinity: ListTileControlAffinity.leading,
              title: RichText(
                textAlign: TextAlign.start,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                      text: "I agree to the ",
                      style: TextStyle(color: Colors.black87)),
                  TextSpan(
                      text: "Terms and Conditions",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.bold)),
                ]),
              ),
              onChanged: (value) {
                setState(() => this._value = value!);
              },
              value: this._value,
            ),
          ),
        ],
      ))),
    );
  }
}
