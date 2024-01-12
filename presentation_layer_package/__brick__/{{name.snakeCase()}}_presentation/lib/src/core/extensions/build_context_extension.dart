import 'package:{{name.snakeCase()}}_presentation/{{name.snakeCase()}}_presentation.dart';

extension BuildContextX on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colors => Theme.of(this).colorScheme;

  TextTheme get texts => Theme.of(this).textTheme;

  Size get size => MediaQuery.of(this).size;

  double get width => size.width;
  double get height => size.height;

  ScrollBehavior get scrollConf => ScrollConfiguration.of(this);

  void _showMessage(
    String message, {
    required Color backgroundColor,
    required IconData icon,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(
                icon,
                color: colors.onTertiary,
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  message,
                  style: texts.titleMedium!.copyWith(
                    color: colors.onTertiary,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          margin: const EdgeInsets.all(16).copyWith(bottom: 50),
          duration: const Duration(milliseconds: 2000),
          elevation: 20,
        ),
      );

  void showWarnMessage(String message) => _showMessage(
        message,
        backgroundColor: colors.tertiary,
        icon: Icons.warning_outlined,
      );

  void showErrorMessage(String message) => _showMessage(
        message,
        backgroundColor: colors.error,
        icon: Icons.error_outline,
      );

  void showSuccessMessage(String message) => _showMessage(
        message,
        backgroundColor: colors.inversePrimary,
        icon: Icons.check_circle_outline,
      );

  void nextFocus() => FocusScope.of(this).nextFocus();

  void unFocus() => FocusScope.of(this).unfocus();
}
