import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('App Unflavoured Feature generated');

  progress('Running "dart fix --apply"');
  await Process.run('fvm', ['dart', 'fix', '--apply']);
  await Process.run('fvm', ['flutter', 'format', '.']);

  progress('Your App Unflavoured Feature is ready');
}
