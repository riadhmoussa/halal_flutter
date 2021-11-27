import 'package:flutter/material.dart';

class ThirdCustomBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  ThirdCustomBar(
      this.title, {
        Key? key,
      })  : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      bottomOpacity: 0.0,
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black,fontSize: 16),
        textAlign: TextAlign.right,
      ),
      leading: IconButton(
        icon: const Icon(Icons.chevron_left, size: 40.0),
        onPressed: () => Navigator.pop(context),
        color: Colors.black,
      ),
      automaticallyImplyLeading: true,
    );
  }
}
