import 'package:exercice/presentation/common/base/ui/BaseStatefulWidget.dart';
import 'package:exercice/presentation/common/utils/scenarios/use_case.dart';
import 'package:exercice/presentation/common/utils/window_config.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:flutter/material.dart';

/// [SignInViewModel], [SignInView]
// ignore: must_be_immutable
class OfferedShiftsWindow extends BaseStatefulWidget {
  OfferedShiftsWindow({Key? key, WindowConfig? windowConfig})
      : super(key: key, windowConfig: windowConfig);

  static OfferedShiftsWindow instance = OfferedShiftsWindow();

  @override
  Widget specifyUseCase({UseCase useCase = UseCase.defaultCase}) {
    return OfferedShiftsWindow(
        windowConfig: WindowConfig(
            view: OfferedShiftsView(), viewModel: OfferedShiftsViewModel()));
  }
}
