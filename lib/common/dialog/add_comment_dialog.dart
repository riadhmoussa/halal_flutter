import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';

class AddCommentDialog extends StatefulWidget {
  final String title  ;


  const AddCommentDialog({Key? key, this.title="", }) : super(key: key);

  @override
  _AddCommentDialogState createState() => _AddCommentDialogState();
}

class _AddCommentDialogState extends State<AddCommentDialog> {
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
                  margin: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text(widget.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.close_outlined, color: Colors.grey, size: 25.0),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                      style: TextStyle(
                          fontSize: 12.0,
                          height:8,
                          color: Colors.black
                      ),
                      onChanged: (text) => {

                      },
                      decoration: InputDecoration(
                        fillColor: Colors.grey.shade300, filled: true,
                        errorText:null,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        labelText: "Enter your comment",
                        labelStyle: new TextStyle(
                          fontSize: 12.0,
                        ),
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      )),
                ),
                ButtonSubmit(nameButton: "OK", onPressed: () {  Navigator.of(context).pop();  }, enabled: true,)

              ],
            ),
          ),)

      ],
    );
  }
}