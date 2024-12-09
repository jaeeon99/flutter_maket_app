import 'package:flutter/material.dart';
import 'package:flutter_maket_app/ui/pasges/welcome/welcome_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        highlightColor: Colors.orange,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.white), // 버튼의 글자색
            backgroundColor: WidgetStatePropertyAll(Colors.orange), // 버튼의 색상
            minimumSize: WidgetStatePropertyAll(
              Size.fromHeight(50),
            ), // 버튼의 가로크기 인피니티, 세로 크기기만 50 설정
            textStyle: WidgetStatePropertyAll(
              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8), // 버튼 모서리
              ),
            ),
          ),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
