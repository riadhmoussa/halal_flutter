import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_claim.dart';

class ClaimsPage extends StatefulWidget {
  const ClaimsPage({Key? key}) : super(key: key);

  @override
  _ClaimsPageState createState() => _ClaimsPageState();
}

class _ClaimsPageState extends State<ClaimsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Complaints"),
        body: ListView(
          padding: EdgeInsets.only(top: 15),
          children: [
            ItemClaim(),
            ItemClaim(),
            ItemClaim(),
            ItemClaim(),
            ItemClaim(),
            ItemClaim(),
            ItemClaim()
          ],
        ));
  }
}
