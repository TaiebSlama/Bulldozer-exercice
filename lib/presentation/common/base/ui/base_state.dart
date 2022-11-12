import 'package:exercice/presentation/app/exercise_app.dart';
import 'package:flutter/material.dart';

import '../viewModel/base_view_model.dart';

abstract class BaseState<VM extends BaseViewModel>
    extends State<StatefulWidget> {
  late VM viewModel;

  BuildContext? _dialogContext;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewModel.setUpDataBinding();
    });
  }

  void closeKeyboard() {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void navigateBack() {
    Navigator.of(context).pop();
  }

  void reload(Function method) {
    setState(() {
      method();
    });
  }

  void showLoaderDialog() async {
    await showDialog(
        barrierDismissible: false,
        context: ExerciseApp.navigatorKey.currentContext!,
        builder: (BuildContext context) {
          _dialogContext = context;
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                CircularProgressIndicator(),
              ]);
        });
  }

  void hideLoaderDialog() {
    if (_dialogContext != null) Navigator.pop(_dialogContext!);
    _dialogContext = null;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => closeKeyboard(),
        child: WillPopScope(
            onWillPop: null,
            child: Scaffold(
                body: SafeArea(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                            child: SingleChildScrollView(
                          child: Stack(children: [buildView()]),
                        )))))));
  }

  Widget buildView();

  Future<void> navigateTo(Widget destination) async {
    return Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => destination,
          transitionsBuilder: (_, a, __, c) =>
              FadeTransition(opacity: a, child: c),
        )).then(
      (value) {
        viewModel.handleRefreshWhenGoBack();
      },
    );
  }

  void finishAndNavigateTo(Widget destination) async {
    Navigator.pushAndRemoveUntil(
      ExerciseApp.navigatorKey.currentContext!,
      MaterialPageRoute(builder: (context) => destination),
      (Route<dynamic> route) => false,
    );
  }
}
