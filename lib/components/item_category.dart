import 'package:flutter/material.dart';

class ItemCategory extends StatefulWidget {
  final bool selected;
  const ItemCategory({Key? key,this.selected=false}) : super(key: key);

  @override
  _ItemCategoryState createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(

        margin: EdgeInsets.all(5),
        alignment: Alignment.bottomCenter,
        height: 35,
        child: Material(
          elevation:5 ,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Container(
            color:widget.selected? Colors.green:Colors.white,
            height: 35,
            width: 70,
            child: Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: Icon(Icons.favorite,size: 14,color: widget.selected? Colors.white:Colors.black,),
                  ),
                  Text(
                    "Left",
                    style: TextStyle( fontSize: 14,color: widget.selected? Colors.white:Colors.black),
                  )
                ],
              ),
            ),

          ),
        ));
  }
}
