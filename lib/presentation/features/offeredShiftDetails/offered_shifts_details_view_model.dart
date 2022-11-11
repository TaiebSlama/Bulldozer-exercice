import 'package:exercice/presentation/common/base/viewModel/base_view_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_binding_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_window.dart';

/// [OfferedShiftsDetailsWindow], [OfferedShiftsDetailsView]
class OfferedShiftsDetailsViewModel extends BaseViewModel {
  OfferedShiftsDetailsBindingModel bindingModel =
      OfferedShiftsDetailsBindingModel();

  @override
  Future<void> setUpDataBinding() async {}
}
