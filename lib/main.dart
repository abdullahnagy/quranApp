import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quranappppppp/ui/home/homeScreen.dart';
import 'package:quranappppppp/ui/home/quran_tab/chapter_details_screen.dart';

void main(){
  runApp(myapp());
}


class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(


        primaryColor: Color(0xffB7935F),

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffB7935F),
          
          primary: Color(0xffB7935F),
          onPrimary: Colors.white,
          secondary: Color(0xffCEA76F),
          onSecondary: Colors.black,
        
        
        ),



          appBarTheme:

      AppBarTheme(color: Colors.transparent,
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,fontSize: 30,
      )),
        scaffoldBackgroundColor:  Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(color: Colors.black,
          size: 40,),
          unselectedIconTheme: IconThemeData(color:Colors.white )
        )

      ),
      darkTheme:ThemeData(


          primaryColor: Color(0xff141A2E),

          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff141A2E),

            primary: Color(0xff141A2E),
            onPrimary: Colors.white,
            secondary: Color(0xffFACC1D),
            onSecondary: Colors.black,


          ),



          appBarTheme:

          AppBarTheme(color: Colors.transparent,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30,
              )),
          scaffoldBackgroundColor:  Colors.transparent,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedIconTheme: IconThemeData(color: Colors.black,
                size: 40,),
              unselectedIconTheme: IconThemeData(color:Colors.white )
          )

      ) ,


      debugShowCheckedModeBanner: false,
      routes: {
        chapterDetails.routeName:(context) => chapterDetails(),
        homeScreen.routeName:(context) => homeScreen(),

      },
      initialRoute: homeScreen.routeName,
    );
  }
}
