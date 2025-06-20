import 'dart:math';

/// A class for performing password-related operations such as strength validation and password generation.
class PasswordUtility {
  final _random = Random();

  /// Validates the strength of a given [password].
  /// Returns 'Strong', 'Intermediate', or 'Low' based on the criteria: 
  
  String validateStrength(String password) {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasDigits = password.contains(RegExp(r'\d'));
    final hasSpecialChars = password.contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'));
    final length = password.length;

    if (hasUppercase && hasLowercase && hasDigits && hasSpecialChars && length >= 12) {
      return 'Strong';
    } else if ((hasUppercase || hasLowercase) && hasDigits && length >= 8) {
      return 'Intermediate';
    } else {
      return 'Low';
    }
  }

  /// Generates a strong password of [length] (default: 16).
  /// Includes uppercase, lowercase, digits, and special characters.
  String generateStrongPassword({int length = 16}) {
    const upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    const lower = 'abcdefghijklmnopqrstuvwxyz';
    const digits = '0123456789';
    const special = '!@#\$%^&*()_+[]{}|;:,.<>?';
    final allChars = upper + lower + digits + special;

    return _generatePasswordFromCharset(allChars, length);
  }

  /// Generates an intermediate password of [length] (default: 12).
  /// Includes lowercase letters and digits.
  String generateIntermediatePassword({int length = 12}) {
    const lower = 'abcdefghijklmnopqrstuvwxyz';
    const digits = '0123456789';
    final allChars = lower + digits;

    return _generatePasswordFromCharset(allChars, length);
  }

  /// Generates a low-security password of [length] (default: 8).
  /// Uses only lowercase letters.
  String generateLowPassword({int length = 8}) {
    const lower = 'abcdefghijklmnopqrstuvwxyz';

    return _generatePasswordFromCharset(lower, length);
  }

  /// Helper function to generate a password from a given [charset] and [length].
  String _generatePasswordFromCharset(String charset, int length) {
    return List.generate(length, (index) => charset[_random.nextInt(charset.length)]).join();
  }
}

void main() {
  final util = PasswordUtility();

  print('Strong Password: ${util.generateStrongPassword()}');
  print('Intermediate Password: ${util.generateIntermediatePassword()}');
  print('Low Password: ${util.generateLowPassword()}');

  final sample = 'Test@12345';
  print('\n Password "$sample" is: ${util.validateStrength(sample)}');
}
