import 'package:flutter/material.dart';

class SecondButtonSubmit extends StatefulWidget {
  final String nameButton;
  final VoidCallback onPressed;
  final bool redButton;
  const SecondButtonSubmit({Key? key , this.nameButton = "",
    required this.onPressed,
    this.redButton = false,
    }) : super(key: key);

  @override
  State<SecondButtonSubmit> createState() => _SecondButtonSubmitState();
}

class _SecondButtonSubmitState extends State<SecondButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              style: BorderStyle.solid,
              width: 1.0,
            ),
            color:Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:  Radius.circular(5),
              bottomLeft:  Radius.circular(5),
              topRight: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          height: 50,
          child: Center(
            child: Text("Rate this user",style: TextStyle(color:Colors.green,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
