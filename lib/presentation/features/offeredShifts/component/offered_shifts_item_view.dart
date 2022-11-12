import 'package:exercice/data/bindingModels/offeredShift/shift_binding_model.dart';
import 'package:exercice/presentation/common/utils/resource/app_colors.dart';
import 'package:exercice/presentation/common/utils/resource/app_font.dart';
import 'package:exercice/presentation/features/offeredShifts/offered_shifts_view_model.dart';
import 'package:flutter/material.dart';
import 'package:sprintf/sprintf.dart';

// ignore: must_be_immutable
class OfferedShiftsItemView extends StatelessWidget {
  late ShiftBindingModel offeredShiftModel;
  late OfferedShiftsViewModel viewModel;

  OfferedShiftsItemView(this.viewModel, this.offeredShiftModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        viewModel.handleOfferedShiftSelected(offeredShiftModel);
      },
      child: Card(
          elevation: 4,
          color: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(offeredShiftModel.companyName,
                        style: const TextStyle(
                            color: AppColors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            fontFamily: AppFont.serifRegular)),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    Text(offeredShiftModel.startDate,
                        style: const TextStyle(
                            color: AppColors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                            fontFamily: AppFont.robotoMedium)),
                    const Padding(padding: EdgeInsets.only(top: 5)),
                    Row(children: [
                      Container(
                          padding: const EdgeInsets.only(
                              top: 5, bottom: 5, right: 8, left: 8),
                          decoration: BoxDecoration(
                              color: AppColors.gallery,
                              borderRadius: BorderRadius.circular(17)),
                          child: Text(offeredShiftModel.postName,
                              style: const TextStyle(
                                  color: AppColors.dustyGrey,
                                  fontSize: 10,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: AppFont.robotoMedium))),
                      const Padding(padding: EdgeInsets.only(left: 2)),
                      Text(_preparePriceFormat(),
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFont.robotoMedium,
                              color: AppColors.dustyGrey)),
                      const Padding(padding: EdgeInsets.only(left: 2)),
                      Text(_prepareBonusFormat(),
                          style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppFont.robotoMedium,
                              color: AppColors.emerald)),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(_prepareDurationFormat(),
                            style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                fontFamily: AppFont.robotoMedium,
                                color: AppColors.dustyGrey)),
                      ))
                    ])
                  ]))),
    );
  }

  String _preparePriceFormat() {
    String priceFormat = sprintf("%s / H", [offeredShiftModel.buyPrice]);
    return priceFormat;
  }

  String _prepareBonusFormat() {
    String bonusFormat = sprintf("+ %s / H", [offeredShiftModel.bonusPrice]);
    return bonusFormat;
  }

  String _prepareDurationFormat() {
    String durationFormat = sprintf(
        "%s - %s", [offeredShiftModel.startTime, offeredShiftModel.endTime]);
    return durationFormat;
  }
}
