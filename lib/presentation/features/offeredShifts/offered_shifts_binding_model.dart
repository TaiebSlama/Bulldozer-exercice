import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';

/// [OfferedShiftsViewModel]
class OfferedShiftsBindingModel {
  List<ShiftBindingModel> offeredShiftsBindingModels =
      List.empty(growable: true);
}
