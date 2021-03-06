import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';

class TermsConditionPage extends StatefulWidget {
  const TermsConditionPage({Key? key}) : super(key: key);

  @override
  _TermsConditionPageState createState() => _TermsConditionPageState();
}

class _TermsConditionPageState extends State<TermsConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar("Terms and conditions apply"),
      body: Container(
        margin: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Column(
          children: const [
            Text(
              "The service usage agreement provides an example of text that can be replaced in the same space, this text has been generated From Arabic text generator, where you can generate like this Text or many other texts to add to the increase The number of characters generated by the application. ",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(height: 10),
            Text(
              "The service usage agreement provides an example of text that can be replaced in the same space, this text has been generated From Arabic text generator, where you can generate like this Text or many other texts to add to the increase The number of characters generated by the application. ",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            SizedBox(height: 10),
            Text(
              "The service usage agreement provides an example of text that can be replaced in the same space, this text has been generated From Arabic text generator, where you can generate like this Text or many other texts to add to the increase The number of characters generated by the application. ",
              textAlign: TextAlign.start,
              style: TextStyle(color: Colors.black, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
