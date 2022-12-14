import 'package:flutter/material.dart';
import 'package:todolist/checkboxes.dart';

class AddButton extends StatefulWidget {
  final Function() callFunc;
  const AddButton({Key? key, required this.callFunc}) : super(key: key);

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
      final TextEditingController textController = TextEditingController();
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ADD TASK",style: TextStyle(color: Colors.white),),
                      TextField(
                        controller: textController,
                        decoration: InputDecoration.collapsed(hintText: "Enter the task",) ,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      IconButton(onPressed: () {
                        setState(() {
                          boxList.insert(0,textController.text.toString());
                          widget.callFunc();
                        });
                      }, icon: Icon(Icons.add))
                    ],
                  ),
                ),
              );
            },);
    },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          shape: CircleBorder(),
        ),
        child: Icon(
          size: 40,
          Icons.add
        ));
  }
}
