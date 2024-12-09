import 'package:flutter/material.dart';
import 'package:flutter_maket_app/core/validator_util.dart';

class PwTextFormField extends StatelessWidget {
  PwTextFormField({
    required this.controller,
  });
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(hintText: '비밀번호를 입력해 주세요'),
      obscureText: true, // 비밀번호를 안보이게 해주는 역할
      validator: ValidatorUtil.ValidatorPassword,
    );
  }
}
