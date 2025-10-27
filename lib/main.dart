import 'package:flutter/material.dart';
import 'package:kingtide_challenge/core/core.dart';
import 'package:kingtide_challenge/inject/app_injector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(EntryPoint());
}

class EntryPoint extends StatelessWidget {
  final AppRouter router = getIt<AppRouter>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppRouterWidget(
      appRouter: router,
      child: MainAppWidget(config: router.delegate),
    );
  }
}
