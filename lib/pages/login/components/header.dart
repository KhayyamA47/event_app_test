import 'package:event_app_test/pages/create_account/create_account.dart';
import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:event_app_test/widgets/textButton.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
            fontFamily: Fonts.extraBold,
            textAlign: TextAlign.center,
            maxLines: 2,
            letterSpacing: -0.2,
            text: AppLocalizations.of(context).signIn,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 26.sp),
        SizedBox(height: 1.h),
        Row(
          children: [
            TextWidget(
                fontFamily: Fonts.regular,
                textAlign: TextAlign.left,
                maxLines: 1,
                text: AppLocalizations.of(context).dontHaveAccount,
                textColor: Constants.mediumText,
                fontSize: 14.sp),
            TextButtonWidget(
              underline: true,
              text: AppLocalizations.of(context).signUp,
              color: Constants.robbinsEggBlue,
              function: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CreateAccountPage()));
              },
              size: 14.sp,
              fontFamily: Fonts.semiBold,
            )
          ],
        ),
      ],
    );
  }
}
