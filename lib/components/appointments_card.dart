import 'package:doctor_application_app/utils/config.dart';
import 'package:flutter/material.dart';

class AppointmentsCard extends StatefulWidget {
  const AppointmentsCard({super.key});

  @override
  State<AppointmentsCard> createState() => _AppointmentsCardState();
}

class _AppointmentsCardState extends State<AppointmentsCard> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Config.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
