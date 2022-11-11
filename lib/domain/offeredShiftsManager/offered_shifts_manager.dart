import 'dart:convert';

import 'package:exercice/data/parserModels/offeredShiftModels/OfferedShiftsResponse.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/presentation/common/utils/resource/AppLogger.dart';
import 'package:flutter/services.dart';

class OfferedShiftsManager implements OfferedShiftsApi {
  @override
  fetchData() {
    rootBundle.loadString('assets/json/offered_shifts.json').then((jsonStr) {
      Map<String, dynamic> offeredShiftsMap = jsonDecode(jsonStr);
      OfferedShiftsResponse model =
          OfferedShiftsResponse.fromJson(offeredShiftsMap);
      AppLogger.log("offered_shifts", model.data?.length);
      model.data?.forEach((element) {
        AppLogger.log("offered_shifts", element.toString());
      });
      AppLogger.log("offered_shifts", model.links?.toString());
      AppLogger.log("offered_shifts", model.meta?.toString());
    });
  }
}
