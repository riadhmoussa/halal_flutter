import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String label;
  final bool showIcon;
  final bool showLabel;
  const InputField({Key? key,required this.label,this.showIcon=false,this.showLabel=true}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
            visible: widget.showLabel,
            child:
        Container(
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 5),
            child:  Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.label,
                textAlign: TextAlign.end,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            ))),
        Material(
          elevation:10 ,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Container(
            height: 50,
            margin: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width*0.85,
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,

                style: TextStyle(
                    fontSize: 12.0,
                    height: 2.0,
                    color: Colors.black
                ),
                decoration:  InputDecoration(
                      border: InputBorder.none,
                    floatingLabelBehavior: FloatingLabelBehavior.never,

                    suffixIcon:widget.showIcon? Icon(Icons.arrow_drop_down,color: Colors.grey,):null,
                  label:Text( widget.label,style: TextStyle(fontSize: 12,color: Colors.grey),)
                ),
                onChanged: (text) {
                  setState(() {});
                },
              ),
            ),

          ),
        )
      ],
    );
  }
}
