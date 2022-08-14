import 'package:flutter/material.dart';
import 'package:formgenarator/widget/check_box_question.dart';
import 'package:formgenarator/widget/drop_down_box.dart';
import 'package:formgenarator/widget/input_taking_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('Form Builder'),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.add),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const InputTakingModel(
                        headingTitle: 'Create Drop Box Questions',
                      );
                    }));
                  },
                  child: const Text('Add Dropdown Box'),
                ),
              ),
              PopupMenuItem(
                value: 2,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const InputTakingModel(
                        headingTitle: 'Create Check Box Questions',
                      );
                    }));
                  },
                  child: const Text('Add Check Box'),
                ),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text(
              'Click the plus button to create form',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  DropDownQuestionModel(),
                  CheckBoxQuestionModel(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
