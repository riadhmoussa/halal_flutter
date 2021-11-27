import 'package:flutter/material.dart';
import 'package:halal_flutter/common/app_bar/first_custom_bar.dart';
import 'package:halal_flutter/components/button_submit.dart';
import 'package:halal_flutter/components/input_field.dart';

class AddAdPage extends StatefulWidget {
  const AddAdPage({Key? key}) : super(key: key);

  @override
  _AddAdPageState createState() => _AddAdPageState();
}

class _AddAdPageState extends State<AddAdPage> {
  var checkedValue = true;
  var _value = true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: CustomAppBar("Add publication"),
      body: Container(
        margin: const EdgeInsets.only(top: 5.0),
        child: SingleChildScrollView(
            child: Column(children: [
              InputField(label:"Publication name"),
              InputField(label:"Region",showIcon: true,),
              InputField(label:"City"),
              InputField(label:"Category",showIcon: true,),
              InputField(label:"Type",showIcon: true,),
              InputField(label:"Publication details"),
              CheckboxListTile(
                checkColor: Colors.white,
                activeColor: Colors.green,
                controlAffinity: ListTileControlAffinity.leading,
                title: Text("Comments feature not enabled",style: TextStyle(fontSize: 14),),
                onChanged: (value) {
                  setState(() => this._value = value!);
                },
                value: this._value,
              ),
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Align(
                    child: Text(
                      "Reminder: The commission rate for a halal company is 1% of the sale amount.Browse our bank accounts list ",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 12),
                    ),
                  )),
              ButtonSubmit(enabled: true, nameButton: "Save", onPressed: () => {})
            ])),
      ),
    );
  }
}
