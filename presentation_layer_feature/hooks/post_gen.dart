import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  context.logger.info('Presentation Layer Feature generated');
  context.logger.info('Running "dart fix --apply"');
  await Process.run('fvm', ['dart', 'fix', '--apply']);
  await Process.run('fvm', ['flutter', 'format', '.']);
  context.logger.info('Your Presentation Layer Feature is ready');
}
