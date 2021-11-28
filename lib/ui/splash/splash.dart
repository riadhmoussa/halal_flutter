import 'dart:async';

import 'package:flutter/material.dart';
import 'package:halal_flutter/helper/shared_preferences.dart';
import 'package:halal_flutter/ui/auth/views/login_page.dart';
import 'package:halal_flutter/ui/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    SharedPreferences prefs;
    String savedToken;
    Timer(
        Duration(seconds: 5),
        () => {
              prefs = SharedPreferences(),
              savedToken = prefs.read('token'),
              if (savedToken != null)
                {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()))
                }
              else
                {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()))
                }
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
              child: Image.asset('images/icon.png',
                  width: 130, height: 80, fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
