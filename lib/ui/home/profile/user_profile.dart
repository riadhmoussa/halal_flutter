import 'package:flutter/material.dart';
import 'package:halal_flutter/common/dialog/add_comment_dialog.dart';
import 'package:halal_flutter/components/item_ad.dart';
import 'package:halal_flutter/components/item_review.dart';
import 'package:halal_flutter/components/second_submit_button.dart';
import 'package:halal_flutter/ui/home/chat/conversation_page.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  int selectedFragment = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet:this.selectedFragment==0?SecondButtonSubmit(nameButton: "Rate this user",onPressed: ()=>{
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AddCommentDialog(
                title: "Add a comment",
                showStarts: true,
              );
            })
      },):null,
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Stack(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ]),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 70,
                        height: 70,
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                new AssetImage('images/person.png')),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              verticalDirection: VerticalDirection.up,
                              textBaseline: TextBaseline.alphabetic,
                              textDirection: TextDirection.ltr,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    "Moussa Riadh",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                                GestureDetector(
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color:Colors.white,
                                      border: Border.all(
                                        color: Colors.grey,
                                        style: BorderStyle.solid,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "follow up",
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                )

                              ],
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow[800],
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              verticalDirection: VerticalDirection.up,
                              textBaseline: TextBaseline.alphabetic,
                              textDirection: TextDirection.ltr,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Join on June 7, 2020',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(90, 10, 0, 0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => {UrlLauncher.launch("tel://21213123123")},
                      child: Image.asset(
                        'images/call_btn.png',
                        width: 60,
                        height: 60,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConversationPage()),
                        )
                      },
                      child: Image.asset(
                        'images/chat_btn.png',
                        width: 60,
                        height: 60,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: ()=>{
                          setState(() => this.selectedFragment = 0)
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:this.selectedFragment==0? Colors.green:Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width:this.selectedFragment==1? 1.0:0,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          height: 50,
                          child: Center(
                            child: Text("Reviews",style: TextStyle(color:this.selectedFragment==0? Colors.white:Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: GestureDetector(
                        onTap: ()=>{
                          setState(() => this.selectedFragment = 1)
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width:this.selectedFragment==0? 1.0:0,
                            ),
                            color:this.selectedFragment==1? Colors.green:Colors.white,
                            borderRadius: BorderRadius.only(

                              topRight: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                          ),
                          height: 50,
                          child: Center(
                            child: Text("Publications",style: TextStyle(color:this.selectedFragment==1? Colors.white:Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              this.selectedFragment==0?
              Expanded(
                child: ListView(
                  children: [
                    ItemReview(),
                    ItemReview(),
                    ItemReview(),
                    ItemReview(),
                    ItemReview(),
                    ItemReview(),
                  ],
                ),
              ):
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
          ),
        ),
      ),
    );
  }
}
