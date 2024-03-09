import 'package:doctor_application_app/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String social;
  const SocialButton({super.key, required this.social});

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        padding: const EdgeInsets.symmetric(vertical: 10),
        side: const BorderSide(width: 1, color: Colors.black),
      ),
      onPressed: () {},
      child: SizedBox(
        width: Config.widthSize * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              'assets/$social.png',
              width: 40,
              height: social == 'google' ? 40 : 40,
            ),
            Text(social.toUpperCase(),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ))
            // Image.asset()
          ],
        ),
      ),
    );
  }
}
