import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool showGoBack;

  CustomAppBar(
      this.title,
      {
        Key? key,
        this.showGoBack=true
      })  : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottomOpacity: 0.5,
      elevation: 0.5,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black,fontSize: 16),
        textAlign: TextAlign.right,
      ),
      leading:this.showGoBack? IconButton(
        icon: const Icon(Icons.arrow_back, size: 25.0),
        onPressed: () => Navigator.pop(context),
        color: Colors.black,
        hoverColor: Colors.transparent,
      ):null,
      automaticallyImplyLeading: true,
    );
  }
}
