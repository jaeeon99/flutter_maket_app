class ValidatorUtil {
  //
  static String? ValidatorId(String? value) {
    //
    if (value?.trim().isEmpty ?? true) {
      return "아이디를 입력해주세요";
    }
    if (value!.length < 2) {
      //
      return '아이디는 2글자 이상이여야 합니다.';
    }
    return null;
  }

  static String? validatorNickname(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return "닉네임을 입력해주세요";
    }
    if (value!.length < 2) {
      //
      return '닉네임는 2글자 이상이여야 합니다.';
    }
    return null;
  }

  static String? ValidatorPassword(String? value) {
    if (value?.trim().isEmpty ?? true) {
      return "비밀번호를 입력해주세요";
    }
    if (value!.length < 2) {
      //
      return '비밀번호는 2글자 이상이여야 합니다.';
    }
    return null;
  }
}
