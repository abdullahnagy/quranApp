import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/hadeth_model.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/hadeth_title.dart';

class ahadethTabWidget extends StatefulWidget {

  ahadethTabWidget({super.key});

  @override
  State<ahadethTabWidget> createState() => _ahadethTabWidgetState();
}

class _ahadethTabWidgetState extends State<ahadethTabWidget> {
  List<HadethItem> allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.isEmpty) loadahadethfile();

    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 1,
              child: Image.asset("assets/images/ahadeth_image.png")),


          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.symmetric(horizontal: BorderSide(color: Colors.black))

            ),


              child:

              Text("ahadeth",textAlign: TextAlign.center,style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.black),)),

          Expanded(
            flex: 3,
              child:allAhadeth.isEmpty? Center(child: CircularProgressIndicator(),):


              ListView.separated(

                  itemBuilder: (context, index) => hadethtitlewidget(hadethitem:allAhadeth[index]),
                  separatorBuilder: (context, index) => Container(
                    color: Theme.of(context).primaryColor,
                    width: double.infinity,
                    height: 2,
                    margin: EdgeInsets.symmetric(horizontal: 66),
                  ),
                  itemCount: allAhadeth.length))



        ],
      ),

    );
  }

  void loadahadethfile() async{
    String filecontent = await  rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethlist= filecontent.trim().split("#");
    for(int i=0;i<ahadethlist.length;i++){
      String singlehadeth= ahadethlist[i];
      List<String> hadethLine=singlehadeth.trim().split('\n');
      String hadethtitle=hadethLine[0];
      hadethLine.removeAt(0);
      String hadethcontent =hadethLine.join('\n');
      HadethItem h= HadethItem(title: hadethtitle, content: hadethcontent);
      allAhadeth.add(h);

    }
    setState(() {

    });


  }
}
