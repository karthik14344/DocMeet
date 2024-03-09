// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_application_app/utils/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final String title;
  final bool disable;
  final Function() onPressed;

  const Button({
    Key? key,
    required this.width,
    required this.title,
    required this.disable,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Config.primaryColor,
            foregroundColor: Colors.white,
          ),
          onPressed: disable ? null : onPressed,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
