import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:event_app_test/widgets/textButton.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TextWidget(
            fontFamily: Fonts.extraBold,
            textAlign: TextAlign.left,
            maxLines: 1,
            letterSpacing: -0.2,
            text: AppLocalizations.of(context).createAccount,
            textColor: Constants.darkText,
            fontWeight: FontWeight.w600,
            fontSize: 26.sp),
        Row(
          children: [
            TextWidget(
                fontFamily: Fonts.regular,
                textAlign: TextAlign.left,
                maxLines: 1,
                text: AppLocalizations.of(context).alreadyHaveAccount,
                textColor: Constants.mediumText,
                fontSize: 14.sp),
            TextButtonWidget(
              underline: true,
              text: AppLocalizations.of(context).signIn,
              color: Constants.robbinsEggBlue,
              function: () {},
              size: 14.sp,
              fontFamily: Fonts.semiBold,
            )
          ],
        ),
      ],
    );
  }
}
