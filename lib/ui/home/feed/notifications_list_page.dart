import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_ad.dart';
import 'package:halal_flutter/components/item_notification.dart';

class NotificationsListPage extends StatefulWidget {
  const NotificationsListPage({Key? key}) : super(key: key);

  @override
  _NotificationsListPageState createState() => _NotificationsListPageState();
}

class _NotificationsListPageState extends State<NotificationsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("Notifications list"),
      body: Container(
        margin: EdgeInsets.only(top:10),
        child: ListView(
          children: [
            ItemNotification(),
            ItemNotification(),
            ItemNotification(),
            ItemNotification(),
          ],
        ),
      ),
    );
  }
}
