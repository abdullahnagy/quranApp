import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quranappppppp/ui/home/quran_tab/chapter_details_screen.dart';

class chapterTitleWidget extends StatelessWidget {
  String chapterTitle;
  int index;

  chapterTitleWidget({required this.chapterTitle,required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, chapterDetails.routeName,

            arguments:chapterTitleArgs(suraname: chapterTitle, index: index) );
      },


      child: Container(
        alignment: Alignment.center,
        padding:EdgeInsets.symmetric(vertical: 8) ,

        child: Text(chapterTitle,style:
          TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
      ),
    );
  }
}

class chapterTitleArgs{
  String suraname;
  int index;
  chapterTitleArgs({required this.suraname,required this.index});

}
