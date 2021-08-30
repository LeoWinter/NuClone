import 'package:flutter/material.dart';
import 'package:nuclone/pages/home/widgets/cards/firstCard.dart';
import 'package:nuclone/pages/home/widgets/cards/secordCard.dart';
import 'package:nuclone/pages/home/widgets/cards/thirdCard.dart';

import 'cards/CardApp.dart';

class PageViewApp extends StatelessWidget {

  const PageViewApp({Key? key, required this.top, required this.onChanged, required this.onPanUpdate, required this.showMenu}) : super(key: key);

  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration(milliseconds: 250),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height*0.45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
          child: PageView(
            onPageChanged: onChanged,
            physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
            children: <Widget>[
            CardApp(
              child: FirstCardApp(),
            ),
            CardApp(
              child: secordCardApp(),
            ),
            CardApp(
              child: ThirdCard(),
            ),
          ],
        ),
      ),
    );
  }
}
