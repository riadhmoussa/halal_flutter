import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final bool showLastIcon;
  final String placeholder;
  final bool valid;
  final Function(String text) onChanged;

  const Input({Key? key, this.showLastIcon = false, required this.placeholder,this.valid=true, required this.onChanged}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 25, 20),
      child: TextField(
          style: TextStyle(
              fontSize: 12.0,
              height:2,
              color: Colors.black
          ),
          onChanged: (text) => widget.onChanged(text),
          decoration: InputDecoration(
            errorText:widget.valid?null: "This text must not be empty",
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            labelText: widget.placeholder,
            labelStyle: new TextStyle(
              fontSize: 12.0,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: IconButton(
              onPressed: () {
                print('search button pressed');
              },
              icon: widget.placeholder == "First name" ||
                  widget.placeholder == "Last name"
                  ? const Icon(Icons.person_outline,color: Colors.grey,size: 20,)
                  : (widget.placeholder == "E-mail"
                  ? const Icon(Icons.email_outlined,color: Colors.grey,size: 20,)
                  : widget.placeholder == "Last name"
                  ? const Icon(Icons.password_outlined,color: Colors.grey,size: 20,)
                  : const Icon(Icons.password_outlined,color: Colors.grey,size: 20,)),
            ),
            suffixIcon: widget.showLastIcon
                ? Container(
              width: 50,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print('mic button pressed');
                    },
                    icon: Icon(Icons.mic,color: Colors.grey,size: 20,),
                  ),
                ],
              ),
            )
                : null,
          )),
    );
  }
}
