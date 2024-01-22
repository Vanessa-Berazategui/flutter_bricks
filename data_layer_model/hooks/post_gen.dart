import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Executing post_gen hook...');

  progress.update('Data Layer Model generated');

  progress.update('Running "dart fix --apply"');
  await Process.run('fvm', ['dart', 'fix', '--apply']);
  await Process.run('fvm', ['flutter', 'format', '.']);

  progress.update('Your Data Layer Model is ready');

  progress.complete();
}
