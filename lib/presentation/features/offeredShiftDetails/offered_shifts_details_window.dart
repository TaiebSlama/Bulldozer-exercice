import 'package:exercice/presentation/common/base/ui/BaseStatefulWidget.dart';
import 'package:exercice/presentation/common/utils/scenarios/use_case.dart';
import 'package:exercice/presentation/common/utils/window_config.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view_model.dart';
import 'package:flutter/material.dart';

/// [OfferedShiftsDetailsView], [OfferedShiftsDetailsViewModel]
// ignore: must_be_immutable
class OfferedShiftsDetailsWindow extends BaseStatefulWidget {
  OfferedShiftsDetailsWindow({Key? key, WindowConfig? windowConfig})
      : super(key: key, windowConfig: windowConfig);

  static OfferedShiftsDetailsWindow instance = OfferedShiftsDetailsWindow();

  @override
  Widget specifyUseCase({UseCase useCase = UseCase.defaultCase}) {
    return OfferedShiftsDetailsWindow(
        windowConfig: WindowConfig(
            view: OfferedShiftsDetailsView(),
            viewModel: OfferedShiftsDetailsViewModel()));
  }
}
