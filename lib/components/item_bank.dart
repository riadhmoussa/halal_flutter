import 'package:flutter/material.dart';

class ItemBank extends StatefulWidget {
  const ItemBank({Key? key}) : super(key: key);

  @override
  _ItemBankState createState() => _ItemBankState();
}

class _ItemBankState extends State<ItemBank> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Row(
          children: [
            Image.network(
              "https://via.placeholder.com/140x100",
              height: 50,
              width: 75,
              fit: BoxFit.cover,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Al Rajhi Bank",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            )
          ],
        ));
  }
}
