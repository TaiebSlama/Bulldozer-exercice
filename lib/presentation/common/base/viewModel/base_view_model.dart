import 'package:flutter/material.dart';

import '../../utils/resource/AppLogger.dart';
import '../../utils/resource/app_colors.dart';
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

  void showSnackBar(String message, {Function? onSnackBarClosed}) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: AppColors.white, fontSize: 15),
      ),
      duration: const Duration(milliseconds: 1000),
    );
    ScaffoldMessenger.of(view.context)
        .showSnackBar(snackBar)
        .closed
        .then((value) {
      if (onSnackBarClosed != null) onSnackBarClosed();
    });
  }

  void showProgressBar() {
    view.showLoaderDialog();
  }

  void navigateBack() {
    view.navigateBack();
  }

  void hideProgressBar() {
    AppLogger.log("hideProgressBar", view);
    view.hideLoaderDialog();
  }
}
