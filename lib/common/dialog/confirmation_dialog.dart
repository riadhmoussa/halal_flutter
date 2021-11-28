import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';

class ConfirmationDialog extends StatefulWidget {
  const ConfirmationDialog({Key? key, }) : super(key: key);

  @override
  _ConfirmationDialogState createState() => _ConfirmationDialogState();
}

class _ConfirmationDialogState extends State<ConfirmationDialog> {
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
                  child: Text("Are you sure you want to Logout",style: TextStyle(fontSize: 16,), textAlign: TextAlign.center,),
                ),
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: ButtonSubmit(nameButton: "Yes", onPressed: () {  Navigator.of(context).pop();  }, enabled: true,),

                    ),
                    Flexible(
                      flex: 1,
                      child: ButtonSubmit(nameButton: "No",redButton: true, onPressed: () {  Navigator.of(context).pop();  }, enabled: true,)

                    ),
                  ],
                )
              ],
            ),
          ),)

      ],
    );
  }
}