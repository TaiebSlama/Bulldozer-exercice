import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_manager.dart';

/// [OfferedShiftsManager]
abstract class OfferedShiftsApi {
  /// [OfferedShiftsManager.fetchData]
  void fetchData(Function(List<ShiftBindingModel>) itemsFetchedSuccessCallback,
      Function itemsFetchedFailureCallback);
}
