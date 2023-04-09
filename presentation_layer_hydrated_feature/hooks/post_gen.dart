import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  context.logger.info('Presentation Layer Hydrated Feature generated');
  context.logger.info('Running "dart fix --apply" in .');
  await Process.run('fvm', ['dart', 'fix', '--apply', '.']);
  await Process.run('fvm', ['flutter', 'format', '.']);
  context.logger.info('Your Presentation Layer Hydrated Feature is ready');
}
