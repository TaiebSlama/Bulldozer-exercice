import 'package:easy_localization/easy_localization.dart';
import 'package:exercice/presentation/common/base/ui/base_state.dart';
import 'package:exercice/presentation/common/utils/resource/AppLogger.dart';
import 'package:exercice/presentation/common/utils/resource/app_colors.dart';
import 'package:exercice/presentation/common/utils/resource/app_font.dart';
import 'package:exercice/presentation/common/utils/resource/app_icons.dart';
import 'package:exercice/presentation/common/utils/resource/app_strings.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/component/offered_shift_option_item_view.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_view_model.dart';
import 'package:exercice/presentation/features/offeredShiftDetails/offered_shifts_details_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// [OfferedShiftsDetailsWindow], [OfferedShiftsDetailsViewModel]
class OfferedShiftsDetailsView
    extends BaseState<OfferedShiftsDetailsViewModel> {
  @override
  Color? configAppBackground() {
    return AppColors.white;
  }

  @override
  Widget buildView() {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
              onTap: () {
                viewModel.navigateBack();
              },
              child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.black,
                  child: SvgPicture.asset(AppIcons.backSvg,
                      color: AppColors.white, width: 15, height: 15)))),
      const CircleAvatar(
          radius: 50, backgroundImage: AssetImage('assets/images/avatar.jpg')),
      const Padding(padding: EdgeInsets.only(top: 16)),
      Text(viewModel.bindingModel.shiftBindingModel.companyName,
          style: const TextStyle(
              fontFamily: AppFont.serifRegular,
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: AppColors.black)),
      const Padding(padding: EdgeInsets.only(top: 16)),
      Align(
        alignment: Alignment.centerLeft,
        child: Text(viewModel.bindingModel.shiftBindingModel.startDate,
            style: const TextStyle(
                fontFamily: AppFont.serifRegular,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: AppColors.black)),
      ),
      const Padding(padding: EdgeInsets.only(top: 8)),
      Row(children: [
        Container(
            padding:
                const EdgeInsets.only(top: 5, bottom: 5, right: 8, left: 8),
            decoration: BoxDecoration(
                color: AppColors.gallery,
                borderRadius: BorderRadius.circular(17)),
            child: Text(viewModel.bindingModel.shiftBindingModel.postName,
                style: const TextStyle(
                    color: AppColors.dustyGrey,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontFamily: AppFont.robotoMedium))),
        const Padding(padding: EdgeInsets.only(left: 2)),
        Text(viewModel.bindingModel.shiftBindingModel.preparePriceFormat(),
            style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                fontFamily: AppFont.robotoMedium,
                color: AppColors.dustyGrey)),
        const Padding(padding: EdgeInsets.only(left: 2)),
        Expanded(
            child: Align(
          alignment: Alignment.centerRight,
          child: Text(
              viewModel.bindingModel.shiftBindingModel.prepareDurationFormat(),
              style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppFont.robotoMedium,
                  color: AppColors.dustyGrey)),
        ))
      ]),
      ...viewModel.bindingModel.options.map((model) {
        AppLogger.log("tag", "message");
        return OfferedShiftOptionItemView(model);
      }).toList(),
      const Padding(padding: EdgeInsets.only(top: 16)),
      const Align(
        alignment: Alignment.centerLeft,
        child: Text("RESPONSABLE",
            style: TextStyle(
                fontFamily: AppFont.robotoMedium,
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: AppColors.nevada)),
      ),
      const Padding(padding: EdgeInsets.only(top: 5)),
      const Align(
        alignment: Alignment.centerLeft,
        child: Text("Gregorie Kovlaks",
            style: TextStyle(
                fontFamily: AppFont.robotoLight,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: AppColors.black)),
      ),
      const Padding(padding: EdgeInsets.only(top: 20)),
      SizedBox(
        width: double.infinity,
        // height: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.shakespeare,
              padding: const EdgeInsets.symmetric(vertical: 12),
              shape: const StadiumBorder()),
          child: const Text(AppStrings.apply,
                  style: TextStyle(
                      fontFamily: AppFont.robotoMedium,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white))
              .tr(),
        ),
      )
    ]);
  }
}
