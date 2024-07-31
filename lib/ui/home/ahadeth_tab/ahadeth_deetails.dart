import 'package:flutter/material.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/hadeth_model.dart';

class ahadethDetailesScreen extends StatelessWidget {
  static const String routeName="hadeth_datils";



  @override
  Widget build(BuildContext context) {
    HadethItem args =ModalRoute.of(context)?.settings.arguments as HadethItem;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/mainbackground.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),

        ),
        ),
        body: Card(
          child: Text(args.content),
        ),
      ),
    );
  }
}
