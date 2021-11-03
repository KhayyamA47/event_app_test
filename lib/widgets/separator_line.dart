import 'package:event_app_test/util/constants.dart';
import 'package:flutter/material.dart';


class SeparatorLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: 100.w,
      color: Constants.darkText.withOpacity(0.05),
    );
  }
}
