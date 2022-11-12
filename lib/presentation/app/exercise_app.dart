import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/presentation/common/utils/resource/app_colors.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';
import 'package:flutter/material.dart';
import 'package:koin/koin.dart';

import 'injections.dart';

late KoinApplication dependency;

void main() async {
  var application = const ExerciseApp();
  dependency = startKoin((app) {
    app.module(modules);
  });
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en', ''), Locale('fr', '')],
        path: 'assets/translations',
        // <-- change the path of the translation files
        fallbackLocale: const Locale('en', ''),
        child: application),
  );
}

class ExerciseApp extends StatelessWidget {
  static final navigatorKey = GlobalKey<NavigatorState>();

  const ExerciseApp({Key? key}) : super(key: key);

  static Koin getDependency() {
    return dependency.koin;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        navigatorKey: navigatorKey,
        theme: ThemeData(scaffoldBackgroundColor: AppColors.gallery),
        home: OfferedShiftsWindow.instance.specifyUseCase());
  }
}
