import 'package:flutter/material.dart';

import '../ui/base_state.dart';

abstract class BaseViewModel {
  late BaseState view;

  Future<void> setUpDataBinding();

  void handleRefreshWhenGoBack() {}

  Future<void> goToDestination(Widget destination) {
    return view.navigateTo(destination);
  }

  void finishAndGoToDestination(Widget destination) {
    view.finishAndNavigateTo(destination);
  }

  void navigateBack() {
    view.navigateBack();
  }

}
