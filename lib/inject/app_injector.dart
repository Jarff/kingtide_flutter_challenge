import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kingtide_challenge/inject/app_injector.config.dart';

final getIt = GetIt.instance;

@InjectableInit(throwOnMissingDependencies: true)
Future<void> configureDependencies() async => getIt.init();
