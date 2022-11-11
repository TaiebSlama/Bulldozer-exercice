import 'package:exercice/presentation/common/base/ui/base_state.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_window.dart';
import 'package:flutter/material.dart';

/// [OfferedShiftsDetailsWindow], [OfferedShiftsDetailsViewModel]
class OfferedShiftsDetailsView
    extends BaseState<OfferedShiftsDetailsViewModel> {
  @override
  Widget buildView() {
    return const Card(
      child: Text("OfferedShiftsDetailsView", style: TextStyle(fontSize: 25)),
    );
  }
}
