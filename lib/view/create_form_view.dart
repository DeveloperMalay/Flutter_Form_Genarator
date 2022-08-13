import 'package:flutter/material.dart';


class CreateFormView extends StatefulWidget {
  const CreateFormView({Key? key}) : super(key: key);

  @override
  State<CreateFormView> createState() => _CreateFormViewState();
}

class _CreateFormViewState extends State<CreateFormView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your Form '),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              child: const Text('Create Question with Dropbox '),
              onTap: () {},
            ),
            InkWell(
              child: const Text('Create Question with CheckBox '),
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}