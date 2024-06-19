import 'package:flutter/material.dart';

class verseWidget extends StatelessWidget {
  String verse;
  verseWidget({required this.verse});


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(verse,textDirection: TextDirection.rtl,style: TextStyle(fontSize:30 ),) ,
    );
  }
}
