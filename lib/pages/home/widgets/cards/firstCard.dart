import 'dart:ui';

import 'package:flutter/material.dart';

class FirstCardApp extends StatelessWidget {
  const FirstCardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                            Icon(Icons.credit_card,
                             color: Colors.grey,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Cartão de crédito",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                              Text("Fatura atual",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "R\$ ",
                                  children: [
                                    TextSpan(text: '4',),
                                    TextSpan(text: ',70')]),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold),
                              ),
                                Text.rich(
                                  TextSpan(
                                      text: "Limite disponível "
                                      ,
                                      children: [
                                        TextSpan(
                                          text: 'R\$ 50,00',
                                          style: TextStyle(
                                              color: Colors.green)
                                  ),
                                  ],
                                ),
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                            ],
                            ),
                          )
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.05,),
                      ],
                      ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        child: Column(children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Container(
                              color: Colors.orange,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: Colors.blueGrey,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.green,
                            ),
                          ),
                        ],
                        ),
                        width: 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: <Widget>[
                    Icon(Icons.shopping_cart, color: Colors.grey
                      ,),
                    SizedBox(width: 5,),
                    Flexible(
                      child: Text("Compra mais recente em Super Mercado no valor de R\$ 29,90 sexta-feira",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13),
                    ),
                    ),
                    Icon(Icons.chevron_right, size: 18, color: Colors.grey[800],),
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
}
