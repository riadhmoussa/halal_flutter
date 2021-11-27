import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_bank.dart';

class BanksAccountPage extends StatefulWidget {
  const BanksAccountPage({Key? key}) : super(key: key);

  @override
  _BanksAccountPageState createState() => _BanksAccountPageState();
}

class _BanksAccountPageState extends State<BanksAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Our bank accounts"),
        body: ListView(
          children: [
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank(),
            ItemBank()
          ],
        ));
  }
}
