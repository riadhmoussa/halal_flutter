import 'package:flutter/material.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/item_ad.dart';
import 'package:halal_flutter/components/item_region.dart';

class RegionListDialog extends StatefulWidget {
  const RegionListDialog({Key? key}) : super(key: key);

  @override
  _RegionListDialogState createState() => _RegionListDialogState();
}

class _RegionListDialogState extends State<RegionListDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }
  contentBox(context){
    return Stack(
      children: <Widget>[
        Material(
          elevation: 5,
          borderRadius: BorderRadius.circular(5),
          child: Container(
            padding: EdgeInsets.only(left: 5,top: 5
                + 5, right: 5,bottom: 5
            ),
            margin: EdgeInsets.only(top:5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),

            ),
            child: Container(
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(children: [
                    Align(
                      alignment: Alignment.topRight,
                      child:GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.close, color: Colors.grey, size: 30),
                      ) ,
                    ),
                  ]),
                  Text("Region",style: TextStyle(fontWeight: FontWeight.bold,),),
                  Expanded(
                    child: ListView(
                      children: [
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),
                        ItemRegion(),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),)

      ],
    );
  }
}