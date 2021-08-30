import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        SvgPicture.asset('assets/icons/gift-outline.svg',
        color: Colors.grey,
        semanticsLabel: 'gift'),
          Text('NuBank Rewards',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26),),
          SizedBox(height: 0,),
          Text("Acumule pontos que nunca expiram e troque por passagens aéreas ou serviços que você realmente usa.",
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              border: Border.all(
                width: 0.7,
                color: Colors.purple
              ,),
            ),
            child: RaisedButton(
              child: Text(
                'ATIVE O SEU REWARDS',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              highlightColor: Colors.purple[800],
              disabledTextColor: Colors.white,
              textColor: Colors.purple[800],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              color: Colors.transparent,
              elevation: 0,
              disabledElevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              hoverElevation: 0,
              onPressed: () {},

            ),
          ),
        ],
        ),
    );
  }
}
