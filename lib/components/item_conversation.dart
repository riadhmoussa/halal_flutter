import 'package:flutter/material.dart';

class ItemConversation extends StatefulWidget {
  const ItemConversation({Key? key}) : super(key: key);

  @override
  _ItemConversationState createState() => _ItemConversationState();
}

class _ItemConversationState extends State<ItemConversation> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.bottomCenter,
          height: 80,
          child: Material(
            elevation:10 ,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width*0.85,

              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(

                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 50,
                        height: 50,
                        child: CircleAvatar(
                            radius: 20,
                            backgroundImage: new AssetImage('images/person.png')),
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
                                  margin: EdgeInsets.only(top:25),
                                  child: Text(
                                    "Moussa Riadh",
                                    textDirection: TextDirection.ltr,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, fontSize: 12),
                                  ),
                                ),
                                Text(
                                  "25 minutes ago",
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 9),
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
                              children: [Text('Hello World !!!',style: TextStyle(fontSize: 12),)],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

            ),
          )),
      onTap: (){},
    );
  }
}
