import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';



class TitleAndDescription extends StatelessWidget {
 final String title,description;

  const TitleAndDescription({Key key, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            fontFamily: Fonts.medium,
            textAlign: TextAlign.center,
            maxLines: 2,
            text: title,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 18.sp),
        SizedBox(height: 5.h),
        TextWidget(
            fontFamily: Fonts.medium,
            textAlign: TextAlign.left,
            maxLines: 10,
            text: description,
            textColor: Constants.lightText,
            fontSize: 14.sp),
      ],
    );
  }
}
