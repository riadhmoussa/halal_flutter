import 'package:flutter/material.dart';
import 'package:halal_flutter/ui/ad/details_publication_page.dart';
import 'package:halal_flutter/ui/auth/views/register_page.dart';

class ItemAd extends StatefulWidget {
  final bool showEditButton;
  final bool showRemoveButton;

  const ItemAd({
    Key? key,
    this.showEditButton = false,
    this.showRemoveButton=false
  }) : super(key: key);

  @override
  _ItemAdState createState() => _ItemAdState();
}

class _ItemAdState extends State<ItemAd> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsPublicationPage()),
              )
            },
        child: Container(
            margin: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomCenter,
            child: Material(
              elevation: 10,
              clipBehavior: Clip.antiAlias,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width*0.85,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 75.0,
                        height: 75.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: new AssetImage('images/ad.png')),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.redAccent,
                        ),
                      ),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  verticalDirection: VerticalDirection.up,
                                  textBaseline: TextBaseline.alphabetic,
                                  textDirection: TextDirection.ltr,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Text(
                                      "Dutch sheep",
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, fontSize: 14),
                                    ),
                                    widget.showEditButton == true
                                        ? const Text(
                                      "Edit",
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 14),
                                    )
                                        : widget.showRemoveButton==true?Icon(Icons.favorite, color: Colors.green, size: 20):const Text(
                                      "",
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 14),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  textDirection: TextDirection.ltr,
                                  mainAxisSize: MainAxisSize.max,
                                  children: const [
                                    Icon(Icons.access_time, color: Colors.grey, size: 12),
                                    Text(
                                      "16 hours ago",
                                      textDirection: TextDirection.ltr,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(color: Colors.grey, fontSize: 12),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  verticalDirection: VerticalDirection.up,
                                  textBaseline: TextBaseline.alphabetic,
                                  textDirection: TextDirection.ltr,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Icon(Icons.person_outline_sharp,
                                            color: Colors.grey, size: 12),
                                        Text(
                                          "Moussa Riadh",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.right,
                                          style:
                                          TextStyle(color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      textDirection: TextDirection.ltr,
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        Icon(Icons.location_on_outlined,
                                            color: Colors.grey, size: 12),
                                        Text(
                                          "Makkah",
                                          textDirection: TextDirection.ltr,
                                          textAlign: TextAlign.right,
                                          style:
                                          TextStyle(color: Colors.grey, fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            )));
  }
}
