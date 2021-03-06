import 'dart:developer';
import 'package:event_app_test/models/Intro.dart';
import 'package:event_app_test/pages/intro/introSlidePages.dart';
import 'package:event_app_test/pages/login/login.dart';
import 'package:event_app_test/services.dart';
import 'package:event_app_test/util/constants.dart';
import 'package:event_app_test/util/localization.dart';
import 'package:event_app_test/util/util.dart';
import 'package:event_app_test/widgets/button.dart';
import 'package:event_app_test/widgets/buttonWithIcon.dart';
import 'package:event_app_test/widgets/overlay_loader.dart';
import 'package:flutter/material.dart';


class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _controller = new PageController();
  int index = 0;
  Intro intro;
  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    getIntro(context).then((value) {
      setState(() {
        intro = value;
        Loader.hide();
        log(intro.blocks.length.toString());
      });
    });
    _controller.addListener(() {
      setState(() {
        index = _controller.page.toInt();
      });
    });
  }

  List<Widget> introScreens() {
    for (int i = 0; i < intro.blocks.length; i++) {
      Slide slide = Slide(
          controller: _controller,
          index: i,
          title: intro.blocks[i].title,
          description: intro.blocks[i].text,
          image: intro.blocks[i].icon);

      widgets.add(slide);
    }
    widgets.insert(intro.blocks.length, LoginPage());
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Constants.bgWhite,
        body: intro == null
            ? loading(context)
            : Container(
                padding: EdgeInsets.only(bottom: 1.h),
                height: 100.h,
                child: Stack(
                  children: [
                     Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Flexible(
                            child: PageView(
                                physics: index == intro.blocks.length
                                    ? NeverScrollableScrollPhysics()
                                    : BouncingScrollPhysics(),
                                controller: _controller,
                                children: introScreens()),
                          ),
                        ],
                      ),
                    ),
                  ],
                )));
  }
}
