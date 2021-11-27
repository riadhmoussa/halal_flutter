import 'package:flutter/material.dart';

class InputEdit extends StatefulWidget {
  final String label;
  final String value;

  const InputEdit({Key? key, this.label = "", this.value = ""}) : super(key: key);

  @override
  _InputEditState createState() => _InputEditState();
}

class _InputEditState extends State<InputEdit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Text(
              widget.label,
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
          ),
          Flexible(
            flex: 2,
            child: TextField(
                controller: TextEditingController(text: widget.value),
                style: TextStyle(fontSize: 12.0,color: Colors.grey),

                decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  labelText: widget.label,
                  labelStyle: new TextStyle(
                    fontSize: 12.0,
                  ),
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                )),
          ),
        ],
      ),
    );
  }
}
