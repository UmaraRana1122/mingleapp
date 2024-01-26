import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:mingleapp/widgets/text_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              textWidget("What’s your phone number?",
                  color: Color(0xff555555),
                  fontSize: 23.sp,
                  fontWeight: FontWeight.w600),
              IntlPhoneField(
                style: TextStyle(color: Color(0xff4B5768)),
                showDropdownIcon: true,
                flagsButtonPadding: const EdgeInsets.all(8),
                dropdownIconPosition: IconPosition.trailing,
                decoration: InputDecoration(
                    counterText: '',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff3E9892), width: .3.w),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    hintText: 'hello@example.com',
                    hintStyle: TextStyle(
                        color: Color(0xff928FA6),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400)),
                initialCountryCode: 'US',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
