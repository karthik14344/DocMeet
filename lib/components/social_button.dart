import 'package:doctor_application_app/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String social;
  const SocialButton({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: SizedBox(
        width: Config.widthSize * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Image.asset()
          ],
        ),
      ),
    );
  }
}
