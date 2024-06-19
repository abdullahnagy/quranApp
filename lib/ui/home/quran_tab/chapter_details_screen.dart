import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quranappppppp/ui/home/quran_tab/chapter_title_widget.dart';
import 'package:quranappppppp/ui/home/quran_tab/verseWidget.dart';

class chapterDetails extends StatefulWidget {
  static const String routeName = "chapter_details";

  @override
  State<chapterDetails> createState() => _chapterDetailsState();
}

class _chapterDetailsState extends State<chapterDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    chapterTitleArgs args =
        ModalRoute.of(context)?.settings.arguments as chapterTitleArgs;

    readFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/mainbackground.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            args.suraname,
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemBuilder: (context, index) => verseWidget(verse: verses[index]),
                separatorBuilder: (context, index) => Container(
                  color: Theme.of(context).primaryColor,
                  width:double.infinity ,
                  height:2 ,
                ),
                itemCount: verses.length),
      ),
    );
  }

  void readFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split("\n");
    verses = suraLines;
   
    setState(() {});
  }
}
