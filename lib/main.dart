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
        inputDecorationTheme: InputDecorationTheme(
          // 앱 전체 내에서 텍스트 필드, 텍스트 폼 필드 테마 지정
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          contentPadding: EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
          border: MaterialStateOutlineInputBorder.resolveWith((states) {
            //
            // print(states);
            // 1. states Set 안에 WidgetState.focused 가 포함이 되어 있을때
            if (states.contains(WidgetState.focused)) {
              return OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 2,
                ),
              );
            }
            WidgetState;

            // 2. States Set 안에 WidgetState.error 가 포함이 되어 있을때
            if (states.contains(WidgetState.error)) {
              return OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: Colors.red[100]!,
                  width: 2,
                ),
              );
            }
            WidgetState;

            // 3. 디폴트 값
            return OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey[300]!,
                width: 1,
              ),
            );
          }),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
