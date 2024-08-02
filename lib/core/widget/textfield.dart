import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback generateText;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.generateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: 'xabar kiriting',
          suffixIcon: IconButton(
            onPressed: generateText,
            icon: const Icon(
              Icons.send,
              color: Colors.blue,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 4,),
            borderRadius: BorderRadius.circular(15,),
          ),
        ),
      ),
    );
  }
}