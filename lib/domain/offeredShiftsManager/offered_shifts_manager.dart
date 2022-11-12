import 'dart:convert';

import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/data/bindingModels/offeredShift/shift_state.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/data.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/offered_shifts_response.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';
import 'package:flutter/services.dart';

class OfferedShiftsManager implements OfferedShiftsApi {
  @override
  OfferedShiftsResponse offeredShiftsResponse = OfferedShiftsResponse();

  @override
  ShiftBindingModel shiftBindingModelSelected = ShiftBindingModel();

  /// [OfferedShiftsApi.fetchData]
  @override
  fetchData(Function(List<ShiftBindingModel>) itemsFetchedSuccessCallback,
      Function itemsFetchedFailureCallback) {
    List<ShiftBindingModel> offeredShiftBindingModels =
        List.empty(growable: true);
    rootBundle.loadString('assets/json/offered_shifts.json').then((jsonStr) {
      Map<String, dynamic> offeredShiftsMap = jsonDecode(jsonStr);
      offeredShiftsResponse = OfferedShiftsResponse.fromJson(offeredShiftsMap);

      offeredShiftsResponse.data?.forEach((currentData) {
        ShiftBindingModel index = _createOfferedShiftBindingModel(currentData);
        offeredShiftBindingModels.add(index);
      });
      itemsFetchedSuccessCallback(offeredShiftBindingModels);
    }).catchError(itemsFetchedFailureCallback);
  }

  ShiftBindingModel _createOfferedShiftBindingModel(Data data) {
    ShiftBindingModel model = ShiftBindingModel();
    model.id = data.id ?? -1;
    model.companyName = data.company ?? AppConstants.EMPTY;
    model.postName = data.postName ?? AppConstants.EMPTY;
    model.buyPrice = data.buyPrice ?? AppConstants.EMPTY;
    model.bonusPrice = (data.bonus ?? 0.0).toDouble();
    model.setStartDateFormat(data.startAt);
    model.setEndDateFormat(data.endAt);
    model.setStartTimeFormat(data.startAt);
    model.setEndTimeFormat(data.endAt);
    model.state = ShiftState.upcoming;
    return model;
  }
}
