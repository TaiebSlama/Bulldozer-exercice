import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/data/bindingModels/offeredShiftDetails/offered_shift_option_binding_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view_model.dart';

/// [OfferedShiftsDetailsViewModel]
class OfferedShiftsDetailsBindingModel {
  ShiftBindingModel shiftBindingModel = ShiftBindingModel();
  List<OfferedShiftOptionBindingModel> options = List.empty(growable: true);
}
