class Validators {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$',
  );

  static bool isValidEmail(String email) => _emailRegExp.hasMatch(email);

  static bool isValidPassword(String password) => password.length >= 6;

  static bool isValidTelephone(String telephone) => telephone.length == 9;

  static bool isValidCPassword(String password, String cPassword) =>
      cPassword == password;
}
