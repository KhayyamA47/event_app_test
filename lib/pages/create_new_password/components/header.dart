import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            fontFamily: Fonts.extraBold,
            textAlign: TextAlign.center,
            maxLines: 2,
            letterSpacing: -0.2,
            text: AppLocalizations.of(context).createNewPasswordLabel,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 22.sp),
        SizedBox(height: 6.h),
        TextWidget(
            fontFamily: Fonts.regular,
            textAlign: TextAlign.left,
            maxLines: 10,
            text: AppLocalizations.of(context).createNewPasswordDescription,
            textColor: Constants.mediumText,
            fontSize: 14.sp),
      ],
    );
  }
}
