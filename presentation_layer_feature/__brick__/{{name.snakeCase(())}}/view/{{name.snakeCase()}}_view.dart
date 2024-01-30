import 'package:flutter/material.dart';

class {{name.pascalCase()}}View extends StatelessWidget {
  const {{name.pascalCase()}}View({
    required this.bodyText, 
    super.key,
    });

  final String bodyText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Text(
          bodyText,
        ),
      ),
    );
  }
}
