import 'package:exercice/presentation/common/base/viewModel/base_view_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_binding_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';

/// [OfferedShiftsWindow], [OfferedShiftsView]
class OfferedShiftsViewModel extends BaseViewModel {
  OfferedShiftsBindingModel bindingModel = OfferedShiftsBindingModel();

  @override
  Future<void> setUpDataBinding() async {}
}
