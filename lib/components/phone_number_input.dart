import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';


class PhoneNumberInput extends StatefulWidget {
  final Function(PhoneNumber) onChanged;
  const PhoneNumberInput({Key? key, required this.onChanged}) : super(key: key);

  @override
  State<PhoneNumberInput> createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: IntlPhoneField(
            onChanged: (phone) => widget.onChanged(phone),
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              border: InputBorder.none,
              labelText: 'Phone Number',
              labelStyle: new TextStyle(
                fontSize: 12.0,
                color:Colors.white
              ),
              counterText: "",
            ),
            style: TextStyle(color:Colors.white),
            initialCountryCode: 'SA',
            countryCodeTextColor: Colors.white,
            dropDownIcon: Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 25, 20),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
