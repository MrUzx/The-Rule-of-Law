
import 'package:flutter/material.dart';

class AiMessage extends StatelessWidget {
  final String text;

  const AiMessage(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(14),
          ),
        ),
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style:  TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}