import 'package:flutter/material.dart';
import 'package:todolist/checkboxes.dart';


class DeleteButton extends StatelessWidget {
  final Function() func ;
  const DeleteButton({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed:() {
          boxList =[];
          this.func();
        } ,
        icon: Icon(Icons.delete,color: Colors.lightBlue,size: 20,));
  }
}
