import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SizedBox.expand(
          //컬럼의 크기를 최대로
          child: Column(
            children: [
              Image.asset(
                'assets/welcome.png',
                height: 250,
              ),
              Text(
                '당신 근처의 마켓',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                '동네라서 가능한 모든것\n 지금 내 동네를 선택하고 시작해보세요!',
                // 역슬래시 (\n)은 줄 바꿈
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('시작하기'),
              ),
            ],
          ),
        ));
  }
}
