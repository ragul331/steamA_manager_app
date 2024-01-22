import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final int maxLines;
  const CustomTextFeild({
    super.key,
    required this.controller,
    required this.text,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'comic',
              fontSize: 16,
              color: Color.fromARGB(255, 102, 102, 102),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          TextField(
            controller: controller,
            maxLines: maxLines,
            style: const TextStyle(
              fontFamily: 'comic',
              fontSize: 16,
              color: Color.fromARGB(255, 102, 102, 102),
              fontWeight: FontWeight.w700,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
