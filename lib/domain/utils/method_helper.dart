import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/presentation/common/utils/resource/AppConstants.dart';
import 'package:exercice/presentation/common/utils/resource/AppLogger.dart';

class MethodHelper {
  String parseDate(String date) {
    String result = AppConstants.EMPTY;
    final dt = DateFormat(AppConstants.responseDateFormat).parse(date);
    AppLogger.log("date parser", dt.hour);
    AppLogger.log("date parser", dt.minute);
    AppLogger.log("date parser", AppConstants.months[dt.month - 1]);
    AppLogger.log("date parser", dt.day);
    AppLogger.log("date parser", dt.month);
    AppLogger.log("date parser", DateFormat('EEEE').format(dt));

    return result;
  }
}
