import 'package:flutter/material.dart';
import 'package:vidhya_hub/app/common/styles/app_text_style.dart';

import '../styles/colors.dart';

class OtpTextField extends StatelessWidget {
  final bool first, last;
  const OtpTextField({Key? key, required this.first, required this.last})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: AspectRatio(
        aspectRatio: 0.85,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: MyTextStyles.buttonTextStyle.copyWith(
            color: AppColors.ashTextColor,
            // fontSize: 12,
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.black12),
                borderRadius: BorderRadius.circular(5)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: AppColors.ashTextColor),
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}
