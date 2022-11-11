import 'dart:convert';

import 'package:exercice/data/bindingModels/offeredShift/offered_shift_binding_model.dart';
import 'package:exercice/data/bindingModels/offeredShift/offered_shift_state.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/Data.dart';
import 'package:exercice/data/parserModels/offeredShiftModels/OfferedShiftsResponse.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';
import 'package:flutter/services.dart';

class OfferedShiftsManager implements OfferedShiftsApi {
  /// [OfferedShiftsApi.fetchData]
  @override
  fetchData(
      Function(List<OfferedShiftBindingModel>) itemsFetchedSuccessCallback,
      Function itemsFetchedFailureCallback) {
    List<OfferedShiftBindingModel> offeredShiftBindingModels =
        List.empty(growable: true);
    rootBundle.loadString('assets/json/offered_shifts.json').then((jsonStr) {
      Map<String, dynamic> offeredShiftsMap = jsonDecode(jsonStr);
      OfferedShiftsResponse model =
          OfferedShiftsResponse.fromJson(offeredShiftsMap);
      model.data?.forEach((currentData) {
        OfferedShiftBindingModel index =
            _createOfferedShiftBindingModel(currentData);
        offeredShiftBindingModels.add(index);
      });
      itemsFetchedSuccessCallback(offeredShiftBindingModels);
    }).catchError(itemsFetchedFailureCallback);
  }

  OfferedShiftBindingModel _createOfferedShiftBindingModel(Data data) {
    OfferedShiftBindingModel model = OfferedShiftBindingModel();
    model.companyName = data.company ?? AppConstants.EMPTY;
    model.postName = data.postName ?? AppConstants.EMPTY;
    model.buyPrice = data.buyPrice ?? AppConstants.EMPTY;
    model.bonusPrice = (data.bonus ?? 0.0).toDouble();
    model.startDate = data.startAt ?? AppConstants.EMPTY;
    model.endDate = data.endAt ?? AppConstants.EMPTY;
    model.startTime = data.startAt ?? AppConstants.EMPTY;
    model.endTime = data.endAt ?? AppConstants.EMPTY;
    model.state = OfferedShiftState.upcoming;
    return model;
  }
}
