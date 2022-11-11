import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OfferedShiftsItemView extends StatelessWidget {
  late ShiftBindingModel offeredShiftModel;
  late OfferedShiftsViewModel viewModel;

  OfferedShiftsItemView(this.viewModel, this.offeredShiftModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
