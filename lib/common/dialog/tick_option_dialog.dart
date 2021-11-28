import 'package:flutter/material.dart';
import 'package:halal_flutter/components/white_submit_button.dart';

class TickOptionsDialog extends StatefulWidget {
  final String title;
  final VoidCallback onPressedArabic;
  final VoidCallback onPressedEnglish;
  final String selectedLanguge;

  const TickOptionsDialog({Key? key, this.title="", required this.onPressedEnglish,required this.onPressedArabic,this.selectedLanguge="en"}) : super(key: key);

  @override
  _TickOptionsDialogState createState() => _TickOptionsDialogState();
}

class _TickOptionsDialogState extends State<TickOptionsDialog> {
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
          borderRadius: BorderRadius.circular(10),
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
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  height: 30.0,
                  child: GestureDetector(
                    onTap: widget.onPressedArabic,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('العربية', style: TextStyle(color: Colors.black),),
                       widget.selectedLanguge=="ar" ? Image.asset(
                          'images/check_icon.png',
                          width: 25,
                          height: 25,
                        ):Text("",),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: GestureDetector(
                    onTap: widget.onPressedEnglish,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('English', style: TextStyle(color: Colors.black),),
                        widget.selectedLanguge=="en" ? Image.asset(
                          'images/check_icon.png',
                          width: 25,
                          height: 25,
                        ):Text("",)

                      ],
                    ),
                  ),
                ),

            ],
            ),
          ),)

      ],
    );
  }
}