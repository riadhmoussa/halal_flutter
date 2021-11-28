import 'package:flutter/material.dart';

class ItemRecivedMsg extends StatefulWidget {
  const ItemRecivedMsg({Key? key}) : super(key: key);

  @override
  _ItemRecivedMsgState createState() => _ItemRecivedMsgState();
}

class _ItemRecivedMsgState extends State<ItemRecivedMsg> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(

            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                              padding: EdgeInsets.all(8),
                              decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(16.0),
                                color: Colors.grey.shade200,
                              ),
                              child: Text(
                                "God bless you",
                                style: TextStyle(color: Colors.black, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                        radius: 20,
                        backgroundImage: new AssetImage('images/dargon.jpg')),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 5, 20, 0),
            child:  Text("a day ago",style: TextStyle(fontSize: 10,color: Colors.grey),),
          )
        ]);
  }
}
