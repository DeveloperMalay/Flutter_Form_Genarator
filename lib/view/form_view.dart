import 'package:flutter/material.dart';
import 'package:formgenarator/dialog/show_generic_dialog.dart';
import 'package:formgenarator/widget/check_box_question.dart';
import 'package:formgenarator/widget/drop_down_box.dart';

class FormView extends StatefulWidget {
  const FormView({Key? key}) : super(key: key);

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Form"),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.add),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: InkWell(
                  onTap: () {
                    showGenericDialog(
                      context: context,
                      title: 'Question',
                      content: const TextField(
                        decoration:
                            InputDecoration(labelText: 'write your question'),
                      ),
                      optionBuilder: () => {
                        'Cancel': false,
                        'Add': true,
                      },
                    );
                  },
                  child: const Text('Add Questions'),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: InkWell(
                  onTap: () {
                    showGenericDialog(
                      context: context,
                      title: 'Option',
                      content: const TextField(
                        decoration:
                            InputDecoration(labelText: 'write your option'),
                      ),
                      optionBuilder: () => {
                        'Cancel': false,
                        'Add': true,
                      },
                    );
                  },
                  child: const Text('Add Check Box'),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: InkWell(
                  onTap: () {
                    showGenericDialog(
                      context: context,
                      title: 'Option',
                      content: const TextField(
                        decoration:
                            InputDecoration(labelText: 'write your option'),
                      ),
                      optionBuilder: () => {
                        'Cancel': false,
                        'Add': true,
                      },
                    );
                  },
                  child: const Text('Add Drop Box'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 20,
            ),
            DropDownQuestionModel(),
            CheckBoxQuestionModel(),
          ],
        ),
      ),
    );
  }
}
