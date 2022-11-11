import 'package:exercice/presentation/common/utils/scenarios/use_case.dart';
import 'package:flutter/material.dart';

import '../../utils/window_config.dart';
import 'base_state.dart';

// ignore: must_be_immutable
abstract class BaseStatefulWidget extends StatefulWidget {
  BaseStatefulWidget({Key? key, this.windowConfig}) : super(key: key);
  WindowConfig? windowConfig;

  @override
  // ignore: no_logic_in_create_state
  BaseState createState() {
    windowConfig!.view.viewModel = windowConfig!.viewModel;
    windowConfig!.viewModel.view = windowConfig!.view;
    return windowConfig!.view;
  }

  Widget specifyUseCase({UseCase useCase = UseCase.defaultCase});
}
