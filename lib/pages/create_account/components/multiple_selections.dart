import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/widgets/text.dart';
import 'package:flutter/material.dart';


class MultipleSelections extends StatelessWidget {
  final String title,value;
  final Function function;
  const MultipleSelections({Key key, this.title, this.value, this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 7.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget(
                  text: title,
                  underline: false,
                  fontSize: 12.sp,
                  fontFamily: Fonts.medium,
                  maxLines: 2,
                  textColor: Constants.darkText,
                ),
                SizedBox(height: 0.7.h),
                value==''?SizedBox():TextWidget(
                  text: value,
                  underline: false,
                  fontSize: 10.sp,
                  fontFamily: Fonts.regular,
                  maxLines: 2,
                  textColor: Constants.mediumText,
                )
              ],
            ),
            Icon(Icons.arrow_forward_ios, size: 2.h,color: Color(0xffB3B7C9))
          ],
        ),
      ),
      onTap: () {
        function();
      },
    );
  }
}
