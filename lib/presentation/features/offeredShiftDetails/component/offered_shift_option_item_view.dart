import 'package:exercice/data/bindingModels/offeredShiftDetails/offered_shift_option_binding_model.dart';
import 'package:exercice/presentation/common/utils/resource/app_colors.dart';
import 'package:exercice/presentation/common/utils/resource/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class OfferedShiftOptionItemView extends StatelessWidget {
  OfferedShiftOptionBindingModel model = OfferedShiftOptionBindingModel();

  OfferedShiftOptionItemView(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: AppColors.black,
                child: Container(
                  padding: const EdgeInsets.all(2),
                  // Border radius
                  child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: SvgPicture.asset(model.icon,
                          color: AppColors.black, width: 15, height: 15)),
                ),
              ),
              const Padding(padding: EdgeInsets.only(left: 10)),
              Text(model.description,
                  style: const TextStyle(
                      fontFamily: AppFont.robotoLight,
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: AppColors.black))
            ]));
  }
}
