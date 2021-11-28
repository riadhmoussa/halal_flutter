import 'package:flutter/material.dart';

class ItemSendMsg extends StatefulWidget {
  const ItemSendMsg({Key? key}) : super(key: key);

  @override
  _ItemSendMsgState createState() => _ItemSendMsgState();
}

class _ItemSendMsgState extends State<ItemSendMsg> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              padding: EdgeInsets.all(8),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(16.0),
                color: Colors.green,
              ),
              child: Text(
                "Goodbye my brother",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
          ],
        ),
      ),
       Container(
         margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
         child:  Text("a day ago",style: TextStyle(fontSize: 10,color: Colors.grey),),
       )
      
      ],
    );
  }
}
