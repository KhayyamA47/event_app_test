import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class TipsTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w) +
          EdgeInsets.only(top: 4.h, bottom: 2.4.h),
      child: TextWidget(
          fontFamily: Fonts.bold,
          maxLines: 2,
          text: AppLocalizations.of(context).tips,
          textColor: Constants.darkText,
          fontWeight: FontWeight.w600,
          fontSize: 14.sp),
    );
  }
}
