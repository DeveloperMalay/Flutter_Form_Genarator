import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formgenarator/widget/check_box_question.dart';

class InputTakingModel extends StatefulWidget {
  const InputTakingModel({
    Key? key,
    required this.headingTitle,
  }) : super(key: key);
  final String headingTitle;

  @override
  State<InputTakingModel> createState() => _InputTakingModelState();
}

class _InputTakingModelState extends State<InputTakingModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.headingTitle),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.add),
            itemBuilder: (context) => [
              PopupMenuItem(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    showAlertDialog(context);
                  },
                  child: const Text('Add Options'),
                ),
              ),
            ],
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Write Your Question'),
            ),
            const SizedBox(
              height: 20,
            ),
            CupertinoButton(
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              color: const Color.fromARGB(156, 38, 130, 222),
              child: const Text('Add'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // Create button
    Widget okButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text("Add"),
    );
    Widget cencelButton = TextButton(
      onPressed: () {
        Navigator.of(context).pop();
        const CheckBoxWidget();
      },
      child: const Text("Cencel"),
    );
    // Create AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Options"),
      content: const TextField(
        decoration: InputDecoration(
          labelText: 'Write a option',
        ),
      ),
      actions: [
        cencelButton,
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
