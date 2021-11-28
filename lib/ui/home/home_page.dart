import 'package:flutter/material.dart';
import 'package:halal_flutter/ui/ad/add_ad_page.dart';
import 'package:halal_flutter/ui/home/chat/chat_page.dart';
import 'package:halal_flutter/ui/home/feed/feed_page.dart';
import 'package:halal_flutter/ui/home/myad/my_ad_page.dart';
import 'package:halal_flutter/ui/home/profile/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = FeedPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: PageStorage(bucket: bucket, child: currentScreen),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddAdPage()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 12,
          child: SizedBox(
              height: 60,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: currentTab == 0 ? 2.0 : 0.0,
                                  color: currentTab == 0
                                      ? Colors.green
                                      : Colors.transparent),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = FeedPage();
                                currentTab = 0;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                currentTab == 0
                                    ? Image.asset(
                                        'images/menu_home_green.png',
                                        width: 25,
                                        height: 25,
                                      )
                                    : Image.asset(
                                        'images/menu_home_icon.png',
                                        width: 25,
                                        height: 25,
                                      )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: currentTab == 1 ? 2.0 : 0.0,
                                  color: currentTab == 1
                                      ? Colors.green
                                      : Colors.transparent),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = MyAdPage();
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                currentTab == 1
                                    ? Image.asset(
                                        'images/menu_speaker_green.png',
                                        width: 25,
                                        height: 25,
                                      )
                                    : Image.asset(
                                        'images/menu_speaker_icon.png',
                                        width: 25,
                                        height: 25,
                                      )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: currentTab == 2 ? 2.0 : 0.0,
                                  color: currentTab == 2
                                      ? Colors.green
                                      : Colors.transparent),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = ChatPage();
                                currentTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                currentTab == 2
                                    ? Image.asset(
                                        'images/menu_chat_green_icon.png',
                                        width: 25,
                                        height: 25,
                                      )
                                    : Image.asset(
                                        'images/menu_chat_icon.png',
                                        width: 25,
                                        height: 25,
                                      )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: currentTab == 3 ? 2.0 : 0.0,
                                  color: currentTab == 3
                                      ? Colors.green
                                      : Colors.transparent),
                            ),
                          ),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = const ProfilePage();
                                currentTab = 3;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                currentTab == 3
                                    ? Image.asset(
                                        'images/menu_user_green.png',
                                        width: 25,
                                        height: 25,
                                      )
                                    : Image.asset(
                                        'images/menu_user_icon.png',
                                        width: 25,
                                        height: 25,
                                      )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ]))),
    );
  }
}
