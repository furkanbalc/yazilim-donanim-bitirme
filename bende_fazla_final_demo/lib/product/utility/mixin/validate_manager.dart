mixin ValidateManager {
  final String upperValidate = 'Şifreniz en az bir büyük harf içermelidir\n';
  final String lowerVliadate = 'Şifreniz en az bir küçük harf içermelidir\n';
  final String digitValidate = 'Şifreniz en az bir rakam harf içermelidir';

  final String emailNotNull = 'E-posta boş olamaz';
  final String activeEmail = 'Geçerli bir e-posta girin';
  final String passwordNotNull = 'Şifre boş olamaz';
  final String passwordMinCh = 'Şifreniz en az 6 karakter içermelidir';
  final String passwordSame = 'Şifreler aynı olmalıdır';

  String? emailValidator(String? value) {
    bool isValidEmail = RegExp(
      r'^[a-z0-9.%+-]+@[a-z0-9.-]+\.[a-z]{2,}$',
    ).hasMatch(value!);

    if (value.isEmpty) {
      return emailNotNull;
    } else if (!isValidEmail) {
      return activeEmail;
    }
    return null;
  }

  String? passwordValidator(String? value, String? pass, String? pass2) {
    if (value == null || value.isEmpty) {
      return passwordNotNull;
    }
    if (value.length < 6) {
      return passwordMinCh;
    }

    bool containsUppercase = RegExp(r'[A-Z]').hasMatch(value);
    bool containsLowercase = RegExp(r'[a-z]').hasMatch(value);
    bool containsDigit = RegExp(r'\d').hasMatch(value);

    if (!containsUppercase && !containsLowercase && !containsDigit) {
      return upperValidate + lowerVliadate + digitValidate;
    } else if (!containsUppercase && !containsLowercase) {
      return upperValidate + lowerVliadate;
    } else if (!containsUppercase && !containsDigit) {
      return upperValidate + digitValidate;
    } else if (!containsLowercase && !containsDigit) {
      return lowerVliadate + digitValidate;
    } else if (!containsUppercase) {
      return upperValidate;
    } else if (!containsLowercase) {
      return lowerVliadate;
    } else if (!containsDigit) {
      return digitValidate;
    }
    return null;
  }

  String? tryPasswordValidator(String? value, String? pass, String? pass2) {
    if (value == null || value.isEmpty) {
      return passwordNotNull;
    }
    if (pass != pass2) {
      return passwordSame;
    }
    return null;
  }

  String? loginPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return passwordNotNull;
    }
    if (value.length < 6) {
      return passwordMinCh;
    }
    return null;
  }
}
