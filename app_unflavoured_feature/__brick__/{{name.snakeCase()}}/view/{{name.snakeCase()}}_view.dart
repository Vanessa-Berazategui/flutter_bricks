import 'package:flutter/material.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('{{name.pascalCase()}}'),
      ),
      body: const Center(
        child: Text(
          '{{name.pascalCase()}} View',
        ),
      ),
    );
  }
}