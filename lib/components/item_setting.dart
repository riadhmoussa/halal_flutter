import 'package:flutter/material.dart';

class ItemSetting extends StatefulWidget {
  final VoidCallback onPressed;
  final String title;
  final String subTitle;

  const ItemSetting({Key? key,required this.title,this.subTitle="",required this.onPressed}) : super(key: key);

  @override
  _ItemSettingState createState() => _ItemSettingState();
}

class _ItemSettingState extends State<ItemSetting> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5, 25.0, 5),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Container(
                                child:  Text(
                                  widget.title,
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color:widget.title=="Logout"?Colors.red: Colors.black,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 15),
                                ),
                              ),
                              Visibility(
                                child: Container(
                                    child:  Text(
                                      widget.subTitle,
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    )),
                                visible:widget.subTitle.isNotEmpty? true:false,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            color: Colors.grey,
                            size: 25,
                          ))),
                ],
              ),
            ),
            const Divider(color: Colors.grey)
          ],
        ),
      ),
    );
  }
}
