import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/data/bindingModels/offeredShift/shift_state.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';

class ShiftBindingModel {
  String companyName = AppConstants.EMPTY;
  String postName = AppConstants.EMPTY;
  String buyPrice = AppConstants.EMPTY;
  double bonusPrice = 0.0;
  String startDate = AppConstants.EMPTY;
  String endDate = AppConstants.EMPTY;
  String startTime = AppConstants.EMPTY;
  String endTime = AppConstants.EMPTY;
  ShiftState state = ShiftState.upcoming;

  ShiftBindingModel(
      {this.companyName = AppConstants.EMPTY,
      this.postName = AppConstants.EMPTY,
      this.buyPrice = AppConstants.EMPTY,
      this.bonusPrice = 0.0,
      this.startDate = AppConstants.EMPTY,
      this.endDate = AppConstants.EMPTY,
      this.startTime = AppConstants.EMPTY,
      this.endTime = AppConstants.EMPTY,
      this.state = ShiftState.upcoming});

  void setStartTime(String? startDate) {
    if (startDate != null) {
      final dt = DateFormat(AppConstants.responseDateFormat).parse(startDate);
      startTime = DateFormat(AppConstants.bindingStartEndTimeFormat).format(dt);
    } else {
      startTime = AppConstants.EMPTY;
    }
  }

  void setEndTime(String? endDate) {
    if (endDate != null) {
      final dt = DateFormat(AppConstants.responseDateFormat).parse(endDate);
      endTime = DateFormat(AppConstants.bindingStartEndTimeFormat).format(dt);
    } else {
      endTime = AppConstants.EMPTY;
    }
  }

  void setStartDate(String? startDate) {
    if (startDate != null) {
      final dt = DateFormat(AppConstants.responseDateFormat).parse(startDate);
      this.startDate =
          DateFormat(AppConstants.bindingStartEndDateFormat).format(dt);
    } else {
      this.startDate = AppConstants.EMPTY;
    }
  }

  void setEndDate(String? endDate) {
    if (endDate != null) {
      final dt = DateFormat(AppConstants.responseDateFormat).parse(endDate);
      this.endDate =
          DateFormat(AppConstants.bindingStartEndDateFormat).format(dt);
    } else {
      this.endDate = AppConstants.EMPTY;
    }
  }

  @override
  String toString() {
    return 'OfferedShiftBindingModel{companyName: $companyName, postName: $postName, buyPrice: $buyPrice, bonusPrice: $bonusPrice, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, state: $state}';
  }
}
