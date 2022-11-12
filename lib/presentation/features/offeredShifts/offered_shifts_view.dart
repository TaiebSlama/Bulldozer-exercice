import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/presentation/common/base/ui/base_state.dart';
import 'package:exercice/presentation/common/utils/resource/app_colors.dart';
import 'package:exercice/presentation/common/utils/resource/app_font.dart';
import 'package:exercice/presentation/common/utils/resource/app_strings.dart';
import 'package:exercice/presentation/features/offeredShifts/component/offered_shifts_item_view.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';
import 'package:flutter/material.dart';

/// [OfferedShiftsWindow], [OfferedShiftsViewModel]
class OfferedShiftsView extends BaseState<OfferedShiftsViewModel> {
  @override
  Widget buildView() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(AppStrings.offeredShiftTitle,
                  style: TextStyle(
                      color: AppColors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      fontFamily: AppFont.serifRegular))
              .tr(),
          ...viewModel.bindingModel.offeredShiftsBindingModels
              .map((shiftBindingModel) {
            return OfferedShiftsItemView(viewModel, shiftBindingModel);
          }).toList(),
        ]);
  }
}
