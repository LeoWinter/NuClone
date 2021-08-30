import 'package:flutter/material.dart';
import 'package:nuclone/pages/home/widgets/Menu/BottomMenu.dart';
import 'package:nuclone/pages/home/widgets/Menu/MenuApp.dart';
import 'package:nuclone/pages/home/widgets/MyAppBar.dart';
import 'package:nuclone/pages/home/widgets/MyDotsApp.dart';
import 'package:nuclone/pages/home/widgets/PageViewApp.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage> {

  bool showMenu = false;
  late int _currentIndex;
  late double _yPosition;

  @override
  void initState() {
    super.initState();
    showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == null) {
      _yPosition = _screenHeight * .24;
    }
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu_: showMenu,
            onTap: () {
              setState(() {
                showMenu = !showMenu;
                _yPosition =
                showMenu ? _screenHeight * .75 : _screenHeight * .24;
              });
            },
          ),
          MenuApp(
            top: _screenHeight * .24,
            showMenu: showMenu,
          ),
          BottomMenu(
            showMenu: showMenu,
          ),
          MyDotApp(
            top: _screenHeight*0.7,
            currentIndex: _currentIndex,
            showMenu: showMenu,
          ),
          PageViewApp(
            top: _yPosition, //_yPosition, //!showMenu ? _screenHeight*0.24 : _screenHeight *0.75,
            showMenu: showMenu,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double positionBottomLimit = _screenHeight * .8;
              double positionTopLimit = _screenHeight * .24;
              double midlePosition = positionBottomLimit - positionTopLimit;
              midlePosition = midlePosition / 2;
              setState(() {
                _yPosition += details.delta.dy;

                _yPosition = _yPosition < positionTopLimit
                    ? positionTopLimit
                    : _yPosition;

                _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit
                    : _yPosition;

                if (_yPosition != positionBottomLimit && details.delta.dy > 0) {
                  _yPosition =
                  _yPosition > positionTopLimit + midlePosition - 50
                      ? positionBottomLimit
                      : _yPosition;
                }

                if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottomLimit - midlePosition
                      ? positionTopLimit
                      : _yPosition;
                }

                if (_yPosition == positionBottomLimit) {
                  showMenu = true;
                } else if (_yPosition == positionTopLimit) {
                  showMenu = false;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}