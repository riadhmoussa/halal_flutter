import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_ad.dart';

class MyAdPage extends StatefulWidget {
  const MyAdPage({Key? key}) : super(key: key);

  @override
  _MyAdPageState createState() => _MyAdPageState();
}

class _MyAdPageState extends State<MyAdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar("My Ads",showGoBack: false,),
      body: Container(
        margin: EdgeInsets.only(top:10),
        child: ListView(
          children: [
            ItemAd(
              showEditButton: true,
            ),
            ItemAd(
              showEditButton: true,
            ),
            ItemAd(
              showEditButton: true,
            ),
            ItemAd(
              showEditButton: true,
            ),
          ],
        ),
      ),
    );
  }
}
