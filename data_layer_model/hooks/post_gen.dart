import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  context.logger.info('Data Layer Model generated');
  context.logger.info('Running "dart fix --apply" in .');
  await Process.run('fvm', ['dart', 'fix', '--apply', '.']);
  await Process.run('fvm', ['flutter', 'format', '.']);
  context.logger.info('Your Data Layer Model is ready');
}
