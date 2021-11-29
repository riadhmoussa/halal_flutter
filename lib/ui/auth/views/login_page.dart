import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/phone_number_input.dart';
import 'package:halal_flutter/helper/loader_tools.dart';
import 'package:halal_flutter/ui/auth/viewmodel/login_view_model.dart';
import 'package:halal_flutter/ui/auth/views/verification_phone_number.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _phonenumberController = TextEditingController();
  String _usernameError = "";
  var validPhonenumber = false;
  var phoneNumber = "";

  LoginViewModel loginViewModel = new LoginViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/halal_bg.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/login_transparent_bg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PhoneNumberInput(
                      onChanged: (text) => {
                            if (text.number != null)
                              {
                                setState(() => phoneNumber = text.number!),
                                if (text.number!.length == 9)
                                  {setState(() => this.validPhonenumber = true)}
                                else
                                  {
                                    setState(
                                        () => this.validPhonenumber = false)
                                  }
                              }
                          }),
                  ButtonSubmit(
                      enabled: validPhonenumber,
                      nameButton: "Sign In",
                      onPressed: () => {
                       DialogHelper.showLoading(),
                            loginViewModel
                                .fetchCheckPhone("+966" + phoneNumber)
                                .then((value) => {
                                    DialogHelper.hideLoading(),
                                      if (loginViewModel.response!.success ==
                                          true)
                                        {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    VerificationPhoneNumber(
                                                        phoneNumber: "+966" +
                                                            phoneNumber)),
                                          )
                                        }
                                      else
                                        {}
                                    }),
                          })
                ]),
          ),
        ));
  }


}
