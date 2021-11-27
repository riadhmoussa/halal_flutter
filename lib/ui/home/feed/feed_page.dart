import 'package:flutter/material.dart';
import 'package:halal_flutter/components/drop_down_input.dart';
import 'package:halal_flutter/components/input_search.dart';
import 'package:halal_flutter/components/item_ad.dart';
import 'package:halal_flutter/components/item_category.dart';
import 'package:halal_flutter/ui/home/feed/favorite_list_page.dart';
import 'package:halal_flutter/ui/home/feed/notifications_list_page.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade50,
        body: SafeArea(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "English",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 15),
                      ),
                      Center(
                          child: Image.asset('images/icon.png',
                              width: 75, height: 40, fit: BoxFit.fill)),
                      Row(
                        children:  [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NotificationsListPage()),
                              );
                            },
                            child: Icon(Icons.notifications_none),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FavoriteListPage()),
                              );
                            },
                            child: Icon(Icons.favorite),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: SizedBox(
                    height: 60,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        ItemCategory(selected: true,),
                        ItemCategory(),
                        ItemCategory(),
                        ItemCategory(),
                        ItemCategory(),
                        ItemCategory(),
                        ItemCategory(),
                        ItemCategory(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ItemAd(),
                      ItemAd(),
                      ItemAd(),
                      ItemAd(),
                    ],
                  ),
                )

              ],
            )));
  }
}
