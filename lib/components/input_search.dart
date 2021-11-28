import 'package:flutter/material.dart';

class InputSearch extends StatefulWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  _InputSearchState createState() => _InputSearchState();
}

class _InputSearchState extends State<InputSearch> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      clipBehavior: Clip.antiAlias,
      borderRadius: BorderRadius.all(Radius.circular(5)),
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
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
      ),
    );
  }
}
