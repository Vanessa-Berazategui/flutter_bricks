import 'dart:io';

import 'package:mason/mason.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:path/path.dart' as path;

Future<void> run(HookContext context) async {
  context.logger.info('Getting package info');

  final pubspecContent = await File(
    path.join('..', 'pubspec.yaml'),
  ).readAsString();

  final pubspec = Pubspec.parse(pubspecContent);

  context.vars = {...context.vars, 'package_name': pubspec.name};
  context.logger.info('Package name: ${pubspec.name} ');
}
