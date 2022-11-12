import 'package:exercice/data/bindingModels/offeredShiftDetails/offered_shift_option_binding_model.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/presentation/app/exercise_app.dart';
import 'package:exercice/presentation/common/base/viewModel/base_view_model.dart';
import 'package:exercice/presentation/common/utils/resource/app_icons.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_binding_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_window.dart';

/// [OfferedShiftsDetailsWindow], [OfferedShiftsDetailsView]
class OfferedShiftsDetailsViewModel extends BaseViewModel {
  OfferedShiftsApi offeredShiftsManager =
      ExerciseApp.getDependency().get<OfferedShiftsApi>();
  OfferedShiftsDetailsBindingModel bindingModel =
      OfferedShiftsDetailsBindingModel();

  @override
  Future<void> setUpDataBinding() async {
    bindingModel.shiftBindingModel =
        offeredShiftsManager.shiftBindingModelSelected;
    _prepareOptionsList();
  }

  void _prepareOptionsList() {
    bindingModel.options.add(OfferedShiftOptionBindingModel(
        icon: AppIcons.position,
        description: "48 Rue Sous le Fort, Québec, QC  G1K 4G9"));

    bindingModel.options.add(OfferedShiftOptionBindingModel(
        icon: AppIcons.dollar, description: "Bonus au travailleur: +3/H"));

    bindingModel.options.add(OfferedShiftOptionBindingModel(
        icon: AppIcons.pause, description: "Pause de 30 minutes"));

    bindingModel.options.add(OfferedShiftOptionBindingModel(
        icon: AppIcons.parking, description: "Stationnement gratuit"));

    bindingModel.options.add(OfferedShiftOptionBindingModel(
        icon: AppIcons.clothes, description: "Pantalon noir, chemise noir"));
  }
}
