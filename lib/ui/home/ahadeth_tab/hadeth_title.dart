import 'package:flutter/material.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/ahadeth_deetails.dart';
import 'package:quranappppppp/ui/home/ahadeth_tab/hadeth_model.dart';
import 'hadeth_model.dart';


class hadethtitlewidget extends StatelessWidget {
   HadethItem hadethitem;
  hadethtitlewidget({required this.hadethitem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(ahadethDetailesScreen.routeName,

        arguments: hadethitem);
      } ,
      child: Container(
        padding: EdgeInsets.symmetric(vertical:8 ),
        alignment: Alignment.center,
        child: Text(hadethitem.title),
      ),
    );
  }
}
