import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class secordCardApp extends StatefulWidget {
  const secordCardApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _secordCard();
  }
}
class _secordCard extends State<secordCardApp> with AutomaticKeepAliveClientMixin {
  bool _showSaldo = false;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              Icons.attach_money,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Conta",
                              style: TextStyle(color: Colors.grey, fontSize: 13),
                            ),
                          ],
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width*0.58,),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _showSaldo = !_showSaldo;
                              });
                            },
                            child: SvgPicture.asset(
                                !_showSaldo
                                    ? 'assets/icons/eye-off-outline.svg'
                                    : 'assets/icons/eye-outline.svg',
                                color: Colors.grey,
                                semanticsLabel: 'eye'),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 20, bottom: 20),
                        child: SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showSaldo = !_showSaldo;
                                  });
                                },
                                child:
                                Text.rich(
                                  TextSpan(
                                    text: _showSaldo ? "R\$ 2.000,50" : "Toque para vizualizar",
                                  ),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Text(
                        "Compra mais recente em Super Mercado no valor de R\$ 19,90 sexta-feira",
                        style: TextStyle(color: Colors.black, fontSize: 13),
                      ),
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 18,
                      color: Colors.grey[800],
                    ),
                  ],
                ),
              ),
              color: Colors.grey[200],
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

}
