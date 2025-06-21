import 'dart:math';

class PasswordUtils {
  static String validateStrength(String password) {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasDigit = password.contains(RegExp(r'\d'));
    final hasSpecial = password.contains(RegExp(r'[!@#\$&*~]'));
    final isLongEnough = password.length >= 12;

    if (hasUppercase && hasLowercase && hasDigit && hasSpecial && isLongEnough) {
      return 'Strong';
    } else if ((hasUppercase || hasLowercase) && hasDigit && password.length >= 8) {
      return 'Intermediate';
    } else {
      return 'Low';
    }
  }

  static String generateStrongPassword({int length = 16}) {
  const upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const lower = 'abcdefghijklmnopqrstuvwxyz';
  const digits = '0123456789';
  const specials = '!@#\$&*~';

  final allChars = upper + lower + digits + specials;
  final rand = Random.secure();

  String getRandom(String chars) => chars[rand.nextInt(chars.length)];

  // Initial list with (length - 4) random characters
  final password = List.generate(length - 4, (_) => getRandom(allChars));

  // Insert 1 of each required type at random valid positions (within the current list)
  password.insert(rand.nextInt(password.length + 1), getRandom(upper));
  password.insert(rand.nextInt(password.length + 1), getRandom(lower));
  password.insert(rand.nextInt(password.length + 1), getRandom(digits));
  password.insert(rand.nextInt(password.length + 1), getRandom(specials));

  return password.join();
}


  static String generateIntermediatePassword({int length = 10}) {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    final rand = Random.secure();
    return List.generate(length, (_) => chars[rand.nextInt(chars.length)]).join();
  }

  static String generateLowPassword({int length = 6}) {
    const chars = 'abcdefghijklmnopqrstuvwxyz';
    final rand = Random();
    return List.generate(length, (_) => chars[rand.nextInt(chars.length)]).join();
  }
}
