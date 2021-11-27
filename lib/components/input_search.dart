import 'package:flutter/material.dart';

class InputSearch extends StatefulWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
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
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
            ),
            isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            labelText: "Search for the advertisement you want",
            labelStyle: new TextStyle(
              fontSize: 12.0,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            prefixIcon: IconButton(
              onPressed: () {
                print('search button pressed');
              },
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
          )),
    );
  }
}
