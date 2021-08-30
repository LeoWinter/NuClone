import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {

  const ItemMenuBottom({Key? key, required this.iconData, required this.text}) : super(key: key);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Icon(iconData, size: 16,),
            Text(text, style: TextStyle(fontSize: 10),)
          ],
        ),
        ),
        width: MediaQuery.of(context).size.width*0.22,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
            color: Colors.white24),
      ),
    );
  }
}
