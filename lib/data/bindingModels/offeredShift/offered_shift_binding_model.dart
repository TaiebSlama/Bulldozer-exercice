import 'package:exercice/data/bindingModels/offeredShift/offered_shift_state.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';

class OfferedShiftBindingModel {
  String companyName = AppConstants.EMPTY;
  String postName = AppConstants.EMPTY;
  double buyPrice = 0.0;
  double bonusPrice = 0.0;
  String startDate = AppConstants.EMPTY;
  String endDate = AppConstants.EMPTY;
  String startTime = AppConstants.EMPTY;
  String endTime = AppConstants.EMPTY;
  OfferedShiftState state = OfferedShiftState.upcoming;

  OfferedShiftBindingModel(
      {this.companyName = AppConstants.EMPTY,
      this.postName = AppConstants.EMPTY,
      this.buyPrice = 0.0,
      this.bonusPrice = 0.0,
      this.startDate = AppConstants.EMPTY,
      this.endDate = AppConstants.EMPTY,
      this.startTime = AppConstants.EMPTY,
      this.endTime = AppConstants.EMPTY,
      this.state = OfferedShiftState.upcoming});
}
