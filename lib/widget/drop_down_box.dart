import 'package:flutter/material.dart';

class DropDownQuestionModel extends StatefulWidget {
  const DropDownQuestionModel({Key? key}) : super(key: key);

  @override
  State<DropDownQuestionModel> createState() => _DropDownQuestionModelState();
}

class _DropDownQuestionModelState extends State<DropDownQuestionModel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'what is your favorite animal? ',
            style: TextStyle(fontSize: 18),
          ),
          DropdownMenu()
        ],
      ),
    );
  }
}

class DropdownMenu extends StatefulWidget {
  const DropdownMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<DropdownMenu> createState() => _DropdownMenuState();
}

class _DropdownMenuState extends State<DropdownMenu> {
  String dropdownValue = 'Options';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      items: <String>['Options', 'Dog', 'Cat', 'Tiger', 'Lion']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: const TextStyle(fontSize: 18),
          ),
        );
      }).toList(),
      // Step 5.
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
    );
  }
}
