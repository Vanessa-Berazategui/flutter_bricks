import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  context.logger.info('Domain Layer Entity generated');
  context.logger.info('Running "dart fix --apply" in .');
  await Process.run('fvm', ['dart', 'fix', '--apply', '.']);
  await Process.run('fvm', ['flutter', 'format', '.']);
  context.logger.info('Your Domain Layer Entity is ready');
}
