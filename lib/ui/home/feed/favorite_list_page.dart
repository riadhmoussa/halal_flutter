import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_ad.dart';

class FavoriteListPage extends StatefulWidget {
  const FavoriteListPage({Key? key}) : super(key: key);

  @override
  _FavoriteListPageState createState() => _FavoriteListPageState();
}

class _FavoriteListPageState extends State<FavoriteListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar("Favorites list"),
      body: Container(
        margin: EdgeInsets.only(top:10),
        child: ListView(
          children: [
            ItemAd(
              showRemoveButton:true
            ),
            ItemAd(
                showRemoveButton:true
            ),
            ItemAd(
                showRemoveButton:true
            ),
            ItemAd(
                showRemoveButton:true
            ),
          ],
        ),
      ),
    );
  }
}
