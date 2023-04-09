import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final name = context.vars['name'];

  context.logger.info('Data Layer Package generated');
  context.logger.info('Running "dart fix --apply" in $name');
  await Process.run('fvm', ['dart', 'fix', '--apply', name]);
  await Process.run('fvm', ['flutter', 'format', name]);
  context.logger.info('Your Data Layer Package is ready');
}
