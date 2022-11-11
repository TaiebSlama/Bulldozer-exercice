import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/presentation/common/base/ui/base_state.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';
import 'package:flutter/material.dart';

/// [OfferedShiftsWindow], [OfferedShiftsViewModel]
class OfferedShiftsView extends BaseState<OfferedShiftsViewModel> {
  @override
  Widget buildView() {
    return Card(
      child: const Text("test").tr(),
    );
  }
}
