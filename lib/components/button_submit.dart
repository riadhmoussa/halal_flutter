import 'package:flutter/material.dart';

class ButtonSubmit extends StatefulWidget {
  final String nameButton;
  final VoidCallback onPressed;
  final bool enabled;
  final bool redButton;
  const ButtonSubmit({Key? key , this.nameButton = "",
    required this.onPressed,
    this.redButton = false,
    required this.enabled}) : super(key: key);

  @override
  State<ButtonSubmit> createState() => _ButtonSubmitState();
}

class _ButtonSubmitState extends State<ButtonSubmit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20),
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: ElevatedButton(
        child: Text(
          widget.nameButton,
          style:  TextStyle(fontSize: 16.0,color: widget.enabled ?Colors.white: Colors.green),
        ),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          primary: widget.enabled ? widget.redButton==true?Colors.red: Colors.green : Colors.green.shade300,
        ),
        onPressed: widget.enabled ? widget.onPressed : null,
      ),
    );
  }
}
