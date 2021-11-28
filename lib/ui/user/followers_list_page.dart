import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_follower.dart';
import 'package:halal_flutter/ui/home/profile/user_profile.dart';

class FollowersListPage extends StatefulWidget {
  const FollowersListPage({Key? key}) : super(key: key);

  @override
  _FollowersListPageState createState() => _FollowersListPageState();
}

class _FollowersListPageState extends State<FollowersListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Follow up"),
        body: Container(
          color: Colors.grey.shade100,
          child: ListView(
            children: [
              ItemFollower(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  )
                },
              ),
              ItemFollower(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  )
                },
              ),
              ItemFollower(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  )
                },
              ),
              ItemFollower(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserProfilePage()),
                  )
                },
              ),
            ],
          ),
        ));
  }
}
