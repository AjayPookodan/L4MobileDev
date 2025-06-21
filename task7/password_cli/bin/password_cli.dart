import 'package:args/args.dart';
import 'package:password_cli/password_utils.dart';

void main(List<String> arguments) {
  final parser = ArgParser()
    ..addOption('command', abbr: 'c', help: 'generate or validate')
    ..addOption('level', abbr: 'l', help: 'strong, intermediate, or low')
    ..addOption('length', abbr: 'n', defaultsTo: '12')
    ..addOption('password', abbr: 'p', help: 'Password to validate');

  final args = parser.parse(arguments);

  final command = args['command'];
  final level = args['level'];
  final length = int.tryParse(args['length'] ?? '12') ?? 12;
  final password = args['password'];

  if (command == 'generate') {
    switch (level) {
      case 'strong':
        print('Strong: ${PasswordUtils.generateStrongPassword(length: length)}');
        break;
      case 'intermediate':
        print('Intermediate: ${PasswordUtils.generateIntermediatePassword(length: length)}');
        break;
      case 'low':
        print('Low: ${PasswordUtils.generateLowPassword(length: length)}');
        break;
      default:
        print('Please provide --level=strong|intermediate|low');
    }
  } else if (command == 'validate') {
    if (password == null || password.isEmpty) {
      print('Please provide a password using --password');
    } else {
      print('Password Strength: ${PasswordUtils.validateStrength(password)}');
    }
  } else {
    print('Invalid command. Use --command=generate or --command=validate');
    print(parser.usage);
  }
}
