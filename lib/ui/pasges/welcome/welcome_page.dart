import 'package:flutter/material.dart';
import 'package:flutter_maket_app/ui/pasges/address_search/address_search_page.dart';
import 'package:flutter_maket_app/ui/pasges/login/widgets/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      // 안전 영역은 사용할 수 없게 구현 할 수 있음
      child: SizedBox.expand(
        //컬럼의 크기를 최대로
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Spacer(),
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
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AddressSearchPage();
                    },
                  ));
                },
                child: Text('시작하기'),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                child: Container(
                  height: 50,
                  color: Colors.transparent,
                  alignment: Alignment.center,
                  child: Text(
                    '이미 계정이 있나요? 로그인',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
