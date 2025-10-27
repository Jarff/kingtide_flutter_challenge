import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';

class MainAppWidget extends StatelessWidget {
  final RouterConfig<Object>? config;

  const MainAppWidget({super.key, this.config});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: config,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorName.surface,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: ColorName.primary,
          onPrimary: ColorName.colorOnPrimary,
          primaryContainer: ColorName.primaryContainer,
          onSecondary: ColorName.colorOnSecondary,
          surface: ColorName.surface,
          onSurface: ColorName.colorOnSurface,
          secondary: ColorName.secondary,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: ColorName.secondary,
          selectionColor: ColorName.secondary.withValues(alpha: 0.3),
          selectionHandleColor: ColorName.secondary,
        ),
      ),
    );
  }
}
