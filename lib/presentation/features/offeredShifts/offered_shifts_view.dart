import 'package:exercice/presentation/common/base/ui/base_state.dart';
import 'package:exercice/presentation/features/offeredShifts/component/offered_shifts_item_view.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';
import 'package:flutter/material.dart';

/// [OfferedShiftsWindow], [OfferedShiftsViewModel]
class OfferedShiftsView extends BaseState<OfferedShiftsViewModel> {
  @override
  Widget buildView() {
    return Column(children: [
      ...viewModel.bindingModel.offeredShiftsBindingModels
          .map((shiftBindingModel) {
        return OfferedShiftsItemView(viewModel, shiftBindingModel);
      }).toList(),
    ]);
  }
}
