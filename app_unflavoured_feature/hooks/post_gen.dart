import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress();

  progress.update('App Unflavoured Feature generated');

  progress.update('Running "dart fix --apply"');
  await Process.run('fvm', ['dart', 'fix', '--apply']);
  await Process.run('fvm', ['flutter', 'format', '.']);

  progress.update('Your App Unflavoured Feature is ready');

  progress.complete();
}
