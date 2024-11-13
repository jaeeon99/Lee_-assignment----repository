import 'package:flutter/material.dart';
import 'package:flutter_bim_app/pages/home/home_page.dart';
import 'package:flutter_bim_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system, // 개발이 완료되면 지움, 휴대폰의 테마에 맞춰 사용자가 변경 가능하도록
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}
