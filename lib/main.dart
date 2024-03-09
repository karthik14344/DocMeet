import 'package:doctor_application_app/screens/auth_page.dart';
import 'package:doctor_application_app/utils/config.dart';
import 'package:doctor_application_app/utils/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'MeetDoc',
      theme: ThemeData(
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outLinedBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outLinedBorder,
            floatingLabelStyle: TextStyle(
              color: Config.primaryColor,
            ),
            prefixIconColor: Colors.black87,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 70,
            type: BottomNavigationBarType.fixed,
          )),
      initialRoute: '/',
      routes: {
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
      },
    );
  }
}
