import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/input_field.dart';
import 'package:halal_flutter/components/item_recived_msg.dart';
import 'package:halal_flutter/components/item_send_msg.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({Key? key}) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  width: .5, color: Color.fromRGBO(116, 102, 102, .5)),
            ),
          ),
          height: 55,
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Material(
                elevation: 10,
                clipBehavior: Clip.antiAlias,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width * 0.80,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                          fontSize: 12.0, height: 2.0, color: Colors.black),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          floatingLabelBehavior: FloatingLabelBehavior.never,
                          label: Text("Enter your message")),
                      onChanged: (text) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(5),
                child: Image.asset(
                  'images/send_message_icon.png',
                  width: 40,
                  height: 40,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade100,
        appBar: CustomAppBar("Moussa Riadh"),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(children: [
                ItemSendMsg(),
                ItemRecivedMsg(),
                ItemSendMsg(),
                ItemRecivedMsg(),
                ItemSendMsg(),
                ItemRecivedMsg()
              ]),
            )
          ],
        ));
  }
}
