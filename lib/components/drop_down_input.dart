import 'package:flutter/material.dart';

class DropDownInput extends StatefulWidget {
  const DropDownInput({Key? key}) : super(key: key);

  @override
  _DropDownInputState createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 25, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
          enabled: false,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            isDense: true,
            contentPadding:
            const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            labelText: "All regions",
            labelStyle: new TextStyle(
              fontSize: 12.0,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            suffixIcon: IconButton(
              onPressed: () {
                print('search button pressed');
              },
              icon: Icon(
                Icons.arrow_drop_down,
                color: Colors.grey,
                size: 25,
              ),
            ),
          )),
    );
  }
}
