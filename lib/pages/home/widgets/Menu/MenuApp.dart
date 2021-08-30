import 'package:flutter/material.dart';
import 'package:nuclone/pages/home/widgets/Menu/ItemMenu.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({Key? key, required this.top, required this.showMenu}) : super(key: key);

  final double top;
  final bool showMenu;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
        left: 0,
        right: 0,
        child: AnimatedOpacity(
            opacity: showMenu ? 1 : 0,
            duration: Duration(milliseconds: 100),
            child: Container(
              //color: Colors.red,
              height: MediaQuery.of(context).size.height*0.5,
              child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: <Widget>[
                Image.asset('assets/images/qrcode.png',
                  height: 120,
                  //color: Colors.black,
                ),
                SizedBox(height: 10,),
                Text.rich(TextSpan(
                  text: 'Banco ',
                  children: [
                    TextSpan(
                        text: '260'
                    ),
                    TextSpan(
                        text: ' - NuPagamentos S.A',
                        style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                  style: TextStyle(fontSize: 12)
                ),
                ),
                SizedBox(height: 5,),
                Text.rich(TextSpan(
                    text: 'Agência ',
                    children: [
                      TextSpan(
                          text: '0001',
                          style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                    style: TextStyle(fontSize: 12)
                ),
                ),
                SizedBox(height: 5,),
                Text.rich(TextSpan(
                    text: 'Conta ',
                    children: [
                      TextSpan(
                          text: '0001-1',
                          style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                    style: TextStyle(fontSize: 12)
                ),
                ),
                SizedBox(height: 25,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                    children: <Widget>[
                      ItemMenu(
                        icon: Icons.info_outline,
                        text: "Me ajuda",
                      ),
                      ItemMenu(
                        icon: Icons.person_outline,
                        text: "Perfil",
                      ),
                      ItemMenu(
                        icon: Icons.settings,
                        text: "Configurar conta",
                      ),
                      ItemMenu(
                        icon: Icons.credit_card,
                        text: "Configurar cartão",
                      ),
                      ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                      ),
                      ItemMenu(icon: Icons.phone_android,
                        text: 'Configurações do app',
                      ),
                      SizedBox(height: 25,
                      ),
                      Container(
                        height: 40,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.7, color: Colors.white54
                          ),
                        ),
                        child: RaisedButton(
                            color: Colors.purple[800],
                            elevation: 0,
                            disabledElevation: 0,
                            focusElevation: 0,
                            highlightElevation: 0,
                            hoverElevation: 0,
                            highlightColor: Colors.transparent,
                            splashColor: Colors.purple[900],
                            child:
                            Text("SAIR DO APP!",
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),),
                            onPressed: () {}
                        ),
                      ),
                    ],
                  ),
                ),
              ],
                ),
              ),
            ),
        ),
    );
  }
}
