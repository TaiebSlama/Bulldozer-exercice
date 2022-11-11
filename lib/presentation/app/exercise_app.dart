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
  runApp(application);
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
        navigatorKey: navigatorKey,
        home: OfferedShiftsWindow.instance.specifyUseCase());
  }
}
