import 'package:flutter/material.dart';

class ItemNotification extends StatefulWidget {
  const ItemNotification({Key? key}) : super(key: key);

  @override
  _ItemNotificationState createState() => _ItemNotificationState();
}

class _ItemNotificationState extends State<ItemNotification> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
      child: Column(
        children: [
          Text("27/11/2021 11:58:58"),
          Material(
            color:Colors.grey.shade100,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              width: MediaQuery.of(context).size.width*0.85,
              height: 70,
              margin: EdgeInsets.fromLTRB(10, 15, 10, 0),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                textBaseline: TextBaseline.alphabetic,
                textDirection: TextDirection.ltr,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text("Title",style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Text("Title",style: TextStyle(color:Colors.grey,fontSize: 14),)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
