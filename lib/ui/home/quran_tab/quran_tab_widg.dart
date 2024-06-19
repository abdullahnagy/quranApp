import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quranappppppp/ui/home/quran_tab/chapter_title_widget.dart';

class quraanTabWidget extends StatelessWidget {

  List <String> surasnames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(

              flex:1,
      child: Image.asset("assets/images/quran_header_logo.png")),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 64),

            width:double.infinity ,
            height: 2,
            color: Theme.of(context).colorScheme.primary,

          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 8),

              child: Text("chapter name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 64),

            width:double.infinity ,
            height: 2,
            color: Theme.of(context).colorScheme.primary,

          ),
          Expanded(
            flex:3,
            child: ListView.separated(
                itemBuilder: (context, index) => chapterTitleWidget(chapterTitle: surasnames[index],index: index,),

                separatorBuilder: (context, index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 64),

              width:double.infinity ,
              height: 2,
                  color: Theme.of(context).colorScheme.primary,

            ),

                itemCount: surasnames.length),

          )

        ],
      ),
     
    );
  }
}
