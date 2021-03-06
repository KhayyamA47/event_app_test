import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class HeaderTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextWidget(
        fontFamily: Fonts.extraBold,
        textAlign: TextAlign.start,
        maxLines: 2,
        letterSpacing: -0.2,
        text: AppLocalizations.of(context).verifyLabel,
        textColor: Constants.darkText,
        fontWeight: FontWeight.w600,
        fontSize: 26.sp);
  }
}
