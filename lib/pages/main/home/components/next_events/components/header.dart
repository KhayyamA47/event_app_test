import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class NextEventsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w) + EdgeInsets.only(top: 1.h),

      child: Row(
        children: [
        TextWidget(
              fontFamily: Fonts.medium,
              maxLines: 2,
              text: 'Next events',
              textColor: Constants.darkText,
              fontWeight: FontWeight.w600,
              textAlign: TextAlign.start,
              fontSize: 14.sp),
        ],
      ),
    );
  }
}
