import 'package:flutter/material.dart';
import 'package:todolist/my_clippers.dart';

import 'addbutton.dart';
import 'apptitle.dart';
import 'checkboxes.dart';
import "delete_button.dart";
class AppBody extends StatefulWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  void func(){
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.black,Colors.black54]
            ),
          ),


        ),
        CustomPaint(painter: Sky(heigth: height,width: width),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            AppTitle(),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddButton(callFunc: func),
                DeleteButton(func: func,),
              ],
            ),

            for(var item in boxList)
              CheckBoxes(title: item),

          ],
        ),
        ]
    );
  }
}
