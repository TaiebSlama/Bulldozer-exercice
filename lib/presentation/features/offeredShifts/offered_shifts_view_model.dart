import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/domain/utils/method_helper.dart';
import 'package:exercice/presentation/app/exercise_app.dart';
import 'package:exercice/presentation/common/base/viewModel/base_view_model.dart';
import 'package:exercice/presentation/common/utils/resource/AppLogger.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_binding_model.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_window.dart';

/// [OfferedShiftsWindow], [OfferedShiftsView]
class OfferedShiftsViewModel extends BaseViewModel {
  OfferedShiftsApi offeredShiftsManager =
      ExerciseApp.getDependency().get<OfferedShiftsApi>();

  MethodHelper helper = MethodHelper();
  OfferedShiftsBindingModel bindingModel = OfferedShiftsBindingModel();

  @override
  Future<void> setUpDataBinding() async {
    offeredShiftsManager.fetchData((offeredShiftBindingModels) {
      for (var element in offeredShiftBindingModels) {
        AppLogger.log("offeredShiftBindingModels", element.toString());
      }
    }, () {
      AppLogger.log("offeredShiftBindingModels", "error");
    });
  }
}
