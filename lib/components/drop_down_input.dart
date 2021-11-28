import 'package:flutter/material.dart';

class DropDownInput extends StatefulWidget {
  final VoidCallback onPressed;
  const DropDownInput({Key? key,required this.onPressed}) : super(key: key);

  @override
  _DropDownInputState createState() => _DropDownInputState();
}

class _DropDownInputState extends State<DropDownInput> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child:Container(
            alignment: Alignment.bottomCenter,
            height: 50,
            child: Material(
              elevation:10 ,
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: 50,
                width: 100,

                child: Center(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "All",
                              style: TextStyle( fontSize: 12),
                            ),
                            Text(
                              "Region",
                              style: TextStyle( fontSize: 12),
                            )
                          ],
                        ),
                        Icon(Icons.arrow_drop_down,size: 40,)
                      ],
                    ),
                  ),
                ),

              ),
            )),
      ),
    );
  }
}
