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
      backgroundColor: Colors.white,
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
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
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
                              top: BorderSide(width:currentTab == 0? 2.0:0.0, color:currentTab == 0? Colors.green:Colors.transparent),
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
                                Icon(
                                  Icons.dashboard,
                                  color: currentTab == 0
                                      ? Colors.green
                                      : Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width:currentTab == 1? 2.0:0.0, color:currentTab == 1? Colors.green:Colors.transparent),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = ChatPage();
                                currentTab = 1;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat,
                                  color: currentTab == 1
                                      ? Colors.green
                                      : Colors.grey,
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
                              top: BorderSide(width:currentTab == 2? 2.0:0.0, color:currentTab == 2? Colors.green:Colors.transparent),
                            ),
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: MaterialButton(
                            minWidth: 50,
                            onPressed: () {
                              setState(() {
                                currentScreen = MyAdPage();
                                currentTab = 2;
                              });
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  color: currentTab == 2
                                      ? Colors.green
                                      : Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(width:currentTab == 3? 2.0:0.0, color:currentTab == 3? Colors.green:Colors.transparent),
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
                                Icon(
                                  Icons.person,
                                  color: currentTab == 3
                                      ? Colors.green
                                      : Colors.grey,
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
