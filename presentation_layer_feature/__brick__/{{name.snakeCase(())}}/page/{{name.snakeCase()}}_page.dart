import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class {{name.pascalCase()}}Page<View extends Widget> extends GoRoute {
  {{name.pascalCase()}}Page({
    required super.path,
    required super.name,
    required CreateBloc<{{name.pascalCase()}}Bloc> bloc,
    required this.view,
  }) : super(
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: BlocProvider<{{name.pascalCase()}}Bloc>(
              create: bloc,
              child: view,
            ),
          ),
        );

  final View view;
}
