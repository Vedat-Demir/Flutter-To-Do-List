import 'package:flutter/material.dart';

List<String> boxList=[ ];





class CheckBoxes extends StatefulWidget {
  final String title;

  const CheckBoxes({Key? key, required this.title}) : super(key: key);

  @override
  State<CheckBoxes> createState() => _CheckBoxesState();
}

class _CheckBoxesState extends State<CheckBoxes> {

   bool check = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: CheckboxListTile(
        activeColor: Colors.green,
          value: check,
          onChanged: (value) {
            setState(() {
              check=value!;
            });
          },
          title: Text(widget.title,style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: check ? Colors.green:Colors.red,
          )),

      ),
    );
  }
}
