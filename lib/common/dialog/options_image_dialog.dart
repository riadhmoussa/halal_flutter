import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/white_submit_button.dart';

class OptionsImageDialog extends StatefulWidget {
  final VoidCallback onPressedGallery;
  final VoidCallback onPressedCamera;

  const OptionsImageDialog({Key? key,required this.onPressedCamera,required this.onPressedGallery}) : super(key: key);

  @override
  _OptionsImageDialogState createState() => _OptionsImageDialogState();
}

class _OptionsImageDialogState extends State<OptionsImageDialog> {
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
                  child: Text("Select Action",style: TextStyle(fontSize: 16,), textAlign: TextAlign.right,),
                ),
                whiteSubmitButton(nameButton: "Choose photo from the Gallery", onPressed: widget.onPressedGallery  , enabled: true,),
                whiteSubmitButton(nameButton: "Take a picture from the camera", onPressed: widget.onPressedCamera  , enabled: true,)

              ],
            ),
          ),)

      ],
    );
  }
}