import 'package:flutter/material.dart';

class custnav extends StatelessWidget{
  final String text;
  final Color color;

  custnav(this.text, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(text,style: TextStyle(color: Colors.black,fontStyle: FontStyle.italic,fontWeight: FontWeight.w200),),
      color: color,
      constraints: BoxConstraints.expand(),
      alignment: Alignment.center,
    );
  }

}
