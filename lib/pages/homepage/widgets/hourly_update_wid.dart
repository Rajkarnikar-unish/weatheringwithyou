import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utilities/utilities.dart';

class HourlyUpdateWidget extends StatelessWidget {
  const HourlyUpdateWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.white12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Column(
          children: [
            FaIcon(
              FontAwesomeIcons.cloudMoonRain,
              color: Colors.white,
              size: 28.sp,
            ),
            Text(
              '22\u00b0',
              style: AppTextStyles.paragraphSemiBold,
            ),
            Text(
              '11:00',
              style: AppTextStyles.paragraphRegular.copyWith(
                color: Colors.white54,
              ),
            )
          ],
        ),
      ),
    );
  }
}
