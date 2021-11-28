import 'package:flutter/material.dart';

class ItemRegion extends StatefulWidget {
  const ItemRegion({Key? key}) : super(key: key);

  @override
  _ItemRegionState createState() => _ItemRegionState();
}

class _ItemRegionState extends State<ItemRegion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 15,0, 15),
            child: Text("Makkah",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Divider(height: 3,color: Colors.black,)
        ],
      ),
    );
  }
}
