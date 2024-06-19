import 'package:flutter/material.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/ahadeth_tab_widg.dart';
import 'package:quranappppppp/ui/home/quran_tab/quran_tab_widg.dart';
import 'package:quranappppppp/ui/home/radio_tab/radio_tab_widg.dart';
import 'package:quranappppppp/ui/home/settings_tab/setting_tab_widg.dart';
import 'package:quranappppppp/ui/home/tathbeh_tab/tathbeh_tab_widg.dart';

class homeScreen extends StatefulWidget {
  static const String routeName ="homeSCreen";

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int selectedIndx=0;

  List<Widget> tabs=[
    quraanTabWidget(),
    ahadethTabWidget(),
    tathbehTabWidget(),
    radioTabWidget(),
    settingTabWidget()

  ];

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/mainbackground.png"),fit: BoxFit.cover)
      ),


      child: Scaffold(

        appBar: AppBar(


          title: Text("إسلامي",style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(

          currentIndex:selectedIndx ,
          onTap: (index){
            selectedIndx=index;
            setState(() {

            });



          },


          backgroundColor: Color(0xffB7935F),
            items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xffB7935F),

              icon: ImageIcon(AssetImage("assets/images/quran_ic.png") ),
              label: "quraan"),

              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/ahadeth_ic.png")),
                  label: "ahadeth"),

              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/sebha_ic.png")),
                  label: "tathbeh"),

              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon: ImageIcon(AssetImage("assets/images/radio_ic.png")),
                  label: "radio"),

              BottomNavigationBarItem(
                  backgroundColor: Color(0xffB7935F),
                  icon:Icon(Icons.settings),
                  label: "settings")







            ]

        ),
        body: tabs[selectedIndx],



      ),
    );
  }
}
