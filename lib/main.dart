import 'package:flutter/material.dart';
import 'package:flutter_login_page/widgets/colors.dart';
import 'languages/string_items.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringItems.materialAppTitle,
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: ProjectColors().concrete,
          foregroundColor: ProjectColors().black,
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.transparent,
          iconColor: ProjectColors().mineShaft,
          labelStyle: TextStyle(color: ProjectColors().mineShaft),
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
      ),
      home: const LoginPageView(),
    );
  }
}
