import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;
  final Image? img;

  const CustomDialogBox({Key? key, this.title="", this.descriptions="", this.text="", this.img}) : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          child: Container(
          padding: EdgeInsets.only(left: 5,top: 5
              + 5, right: 5,bottom: 5
          ),
          margin: EdgeInsets.only(top:5),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),

          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin:EdgeInsets.all(10),
                child: Text(widget.title,style: TextStyle(fontSize: 16,), textAlign: TextAlign.center,),
              ),
              ButtonSubmit(nameButton: "OK", onPressed: () {  Navigator.of(context).pop();  }, enabled: true,)

            ],
          ),
        ),)

      ],
    );
  }
}