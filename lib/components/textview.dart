import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextView extends StatefulWidget {
  final int left;
  const TextView({Key? key,required this.left}) : super(key: key);

  @override
  _TextViewState createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(bottom: 10),
      alignment: Alignment.bottomCenter,
      height: 50,
      child: Material(
      elevation:10 ,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(10)),
      child: Container(
        height: 50,
        width: 100,

        child: Center(
          child: Text(
            "Left : "+widget.left.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),

      ),
    ));
  }
}
