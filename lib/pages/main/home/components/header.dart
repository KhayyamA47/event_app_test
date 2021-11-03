import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextWidget(
        fontFamily: Fonts.extraBold,
        textAlign: TextAlign.center,
        maxLines: 1,
        letterSpacing: -0.2,
        text: AppLocalizations.of(context).home,
        textColor: Constants.darkText,
        fontWeight: FontWeight.w600,
        fontSize: 21.sp);
  }
}
