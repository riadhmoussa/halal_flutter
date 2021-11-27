import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/item_conversation.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar("Messages",showGoBack: false,),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.grey.shade100,
                child: ListView(children: [
                  ItemConversation(),
                  ItemConversation(),
                  ItemConversation(),

                ]),
              ),
            )
          ],
        ));
  }
}
