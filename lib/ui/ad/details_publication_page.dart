import 'package:flutter/material.dart';
import 'package:halal_flutter/common/dialog/add_comment_dialog.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/ui/home/chat/conversation_page.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:url_launcher/url_launcher.dart';

class DetailsPublicationPage extends StatefulWidget {
  const DetailsPublicationPage({Key? key}) : super(key: key);

  @override
  _DetailsPublicationPageState createState() => _DetailsPublicationPageState();
}

class _DetailsPublicationPageState extends State<DetailsPublicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        child: Row(
          children: [
            Flexible(
              flex: 4,
              child: ButtonSubmit(
                enabled: true,
                nameButton: "Add comment",
                onPressed: () => {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddCommentDialog(
                          title: "Add a comment",
                        );
                      })
                },
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Image.asset(
                  'images/selected_like_icon.png',
                  width: 40,
                  height: 40,
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/ad.png"),
                  fit: BoxFit.cover,
                ),
              ),
              height: 200,
              child: Stack(children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'images/white_back_icon.png',
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Image.asset(
                    'images/share_icon.png',
                    width: 60,
                    height: 60,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset(
                    'images/report_icon.png',
                    width: 60,
                    height: 60,
                  ),
                )
              ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dutch sheep",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sheep",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined,
                                color: Colors.grey, size: 14.0),
                            Text(
                              "Makkah",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.access_time,
                                color: Colors.grey, size: 14.0),
                            Text(
                              "16 hours ago",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0) //
                              ),
                          border: Border.all(color: Colors.grey)),
                      child: const Text(
                          'Lorem Ipsum has been and remains the standard for formal text'),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 80,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: <Widget>[
                                  ClipOval(
                                    child: Image.network(
                                      "https://via.placeholder.com/140x100",
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              5, 0, 0, 0),
                                          child: Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: const Text(
                                              "Moussa Riadh",
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  5, 0, 0, 0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[800],
                                                        size: 15,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[800],
                                                        size: 15,
                                                      ),
                                                      Icon(
                                                        Icons.star,
                                                        color:
                                                            Colors.yellow[800],
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
                                                ],
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () =>
                                    {UrlLauncher.launch("tel://21213123123")},
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
                                        builder: (context) =>
                                            ConversationPage()),
                                  )
                                },
                                child: Image.asset(
                                  'images/chat_btn.png',
                                  width: 60,
                                  height: 60,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Comments (41)",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
