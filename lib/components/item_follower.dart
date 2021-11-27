import 'package:flutter/material.dart';

class ItemFollower extends StatefulWidget {
  final VoidCallback onPressed;
  const ItemFollower({Key? key, required this.onPressed}) : super(key: key);

  @override
  _ItemFollowerState createState() => _ItemFollowerState();
}

class _ItemFollowerState extends State<ItemFollower> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          alignment: Alignment.bottomCenter,
          height: 80,
          child: Material(
            elevation:10 ,
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width*0.85,

              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: <Widget>[
                    ClipOval(
                      child: Image.network(
                        "https://via.placeholder.com/140x100",
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: Container(
                              margin: EdgeInsets.only(top:10),
                              child: const Text(
                                "Moussa Riadh",
                                textDirection: TextDirection.ltr,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                          size: 15,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[800],
                                          size: 15,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                        const Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                          size: 15,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ),
          )),
      onTap: widget.onPressed,
    );
  }
}
