import 'package:exercice/domain/offeredShiftsManager/offered_shifts_api.dart';
import 'package:exercice/domain/offeredShiftsManager/offered_shifts_manager.dart';
import 'package:koin/koin.dart';

var modules = Module()..single<OfferedShiftsApi>((s) => OfferedShiftsManager());
