import '../resource/AppConstants.dart';

enum UseCase { defaultCase }

extension ScenarioExtension on UseCase {
  static const String defaultUseCase = "default";

  String get routeName {
    switch (this) {
      case UseCase.defaultCase:
        return defaultUseCase;
      default:
        return AppConstants.EMPTY;
    }
  }
}
