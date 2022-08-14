// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class FormWidgetCard extends StatelessWidget {
  const FormWidgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: const Color.fromARGB(255, 19, 81, 132),
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(
                Icons.article_rounded,
                size: 40,
                color: Colors.white,
              ),
              title: const Text(
                'Form 1',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
              subtitle: const Text('Form Id',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                  )),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
