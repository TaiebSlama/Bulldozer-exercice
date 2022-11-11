import 'dart:convert';

import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/data/bindingModels/offeredShift/shift_state.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/Data.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/OfferedShiftsResponse.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';
import 'package:flutter/services.dart';

class OfferedShiftsManager implements OfferedShiftsApi {
  /// [OfferedShiftsApi.fetchData]
  @override
  fetchData(Function(List<ShiftBindingModel>) itemsFetchedSuccessCallback,
      Function itemsFetchedFailureCallback) {
    List<ShiftBindingModel> offeredShiftBindingModels =
        List.empty(growable: true);
    rootBundle.loadString('assets/json/offered_shifts.json').then((jsonStr) {
      Map<String, dynamic> offeredShiftsMap = jsonDecode(jsonStr);
      OfferedShiftsResponse model =
          OfferedShiftsResponse.fromJson(offeredShiftsMap);
      model.data?.forEach((currentData) {
        ShiftBindingModel index = _createOfferedShiftBindingModel(currentData);
        offeredShiftBindingModels.add(index);
      });
      itemsFetchedSuccessCallback(offeredShiftBindingModels);
    }).catchError(itemsFetchedFailureCallback);
  }

  ShiftBindingModel _createOfferedShiftBindingModel(Data data) {
    ShiftBindingModel model = ShiftBindingModel();
    model.companyName = data.company ?? AppConstants.EMPTY;
    model.postName = data.postName ?? AppConstants.EMPTY;
    model.buyPrice = data.buyPrice ?? AppConstants.EMPTY;
    model.bonusPrice = (data.bonus ?? 0.0).toDouble();
    model.setStartDate(data.startAt);
    model.setEndDate(data.endAt);
    model.setStartTime(data.startAt);
    model.setEndTime(data.endAt);
    model.state = ShiftState.upcoming;
    return model;
  }
}
