import 'package:flutter/material.dart';

import 'itemMenuBottom.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key, required this.showMenu}) : super(key: key);

  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return           AnimatedPositioned(
      duration: Duration(milliseconds: 150),
      bottom: !showMenu ? 0 + MediaQuery.of(context).padding.bottom : 0,
      left: 0,
      right: 0,
      height: MediaQuery.of(context).size.height*0.14,
      child: IgnorePointer(
        ignoring: showMenu,
        child: AnimatedOpacity(
          opacity: !showMenu ? 1 : 0,
          duration: Duration(milliseconds: 200),
          child: Container(
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: showMenu ? NeverScrollableScrollPhysics() : BouncingScrollPhysics(),
              children: <Widget>[
                ItemMenuBottom(iconData: Icons.person_add, text: "Indicar amigos",),
                ItemMenuBottom(iconData: Icons.phone_android, text: "Recarga de celular",),
                ItemMenuBottom(iconData: Icons.chat, text: "Cobrar",),
                ItemMenuBottom(iconData: Icons.monetization_on, text: "Empréstimos",),
                ItemMenuBottom(iconData: Icons.move_to_inbox, text: "Depositar",),
                ItemMenuBottom(iconData: Icons.format_align_center, text: "Ajustar limite",),
                ItemMenuBottom(iconData: Icons.chrome_reader_mode, text: "Pagar",),
                ItemMenuBottom(iconData: Icons.lock_open, text: "Bloquear cartão",),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
