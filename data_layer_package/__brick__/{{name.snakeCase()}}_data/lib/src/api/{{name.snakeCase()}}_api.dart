import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:{{name.snakeCase()}}_data/{{name.snakeCase()}}_data.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{name.snakeCase()}}_data/timeout_options.dart';

part '{{name.snakeCase()}}_api.g.dart';

@RestApi()
abstract class {{name.pascalCase()}}Api {}