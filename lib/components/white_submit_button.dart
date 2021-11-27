import 'package:flutter/material.dart';

class whiteSubmitButton extends StatefulWidget {
  final String nameButton;
  final VoidCallback onPressed;
  final bool enabled;
  const whiteSubmitButton({Key? key , this.nameButton = "",
    required this.onPressed,
    required this.enabled}) : super(key: key);

  @override
  State<whiteSubmitButton> createState() => _whiteSubmitButtonState();
}

class _whiteSubmitButtonState extends State<whiteSubmitButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: double.infinity),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
          child: Text(widget.nameButton,style: TextStyle(fontSize: 16),),
        ),
      ),
    );
  }
}
