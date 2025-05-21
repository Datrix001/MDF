import 'package:flutter/material.dart';
import 'package:mdf/utils/font.dart';

class card extends StatelessWidget {
  const card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                        color: Colors.grey[900],
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          title: Text(
                            "Task 1",
                            style: CustomFont.body(context),
                          ),
                          trailing: Text(
                            "Something",
                            style: CustomFont.body(context),
                          ),
                        ),
                      );
  }
}