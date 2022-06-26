import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapp/pages/widgets/attribute_card.dart';
import 'package:weatherapp/utilities/utilities.dart';

class Forecastpage extends StatelessWidget {
  const Forecastpage({Key? key}) : super(key: key);
  static const routeName = '/forecasepage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              sBoxH20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.chevron_left_rounded,
                      color: Colors.white54,
                      size: 36.sp,
                    ),
                  ),
                  Text(
                    'Next 7 Days',
                    style: AppTextStyles.bodySemiBold,
                  ),
                  Icon(
                    Icons.chevron_left_rounded,
                    color: Colors.grey[900],
                    size: 36.sp,
                  ),
                ],
              ),
              sBoxH36,
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: Colors.white12,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.cloudBolt,
                            color: Colors.white,
                            size: 80.sp,
                          ),
                          sBoxW28,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Wednesday, 22 June',
                                style: AppTextStyles.paragraphBold,
                              ),
                              Text(
                                'Thunderstorms',
                                style: AppTextStyles.paragraphRegular.copyWith(
                                  color: Colors.white54,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '10',
                                    style: AppTextStyles.titleBold
                                        .copyWith(fontSize: 50.sp),
                                  ),
                                  Text(
                                    '\u00b0',
                                    style: AppTextStyles.titleBold.copyWith(
                                      fontSize: 36.sp,
                                      color: Colors.white38,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      sBoxH12,
                      // ignore: prefer_const_constructors
                      // AttributeCardWidget(
                      //   cardColor: Colors.black38,
                      // ),
                    ],
                  ),
                ),
              ),
              sBoxH16,
              Table(
                columnWidths: const {
                  0: FractionColumnWidth(.3),
                  1: FractionColumnWidth(.6),
                  2: FractionColumnWidth(.2),
                },
                children: [
                  _singleTableRow(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _singleTableRow() {
    return TableRow(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Text(
            'Mon',
            style:
                AppTextStyles.paragraphRegular.copyWith(color: Colors.white38),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Row(
            children: [
              Icon(
                Icons.cloud,
                color: Colors.white,
                size: 16.sp,
              ),
              sBoxW4,
              Text(
                'Mildly rainy',
                style: AppTextStyles.paragraphSemiBold,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 6.h),
          child: Text(
            '23\u00b0',
            style: AppTextStyles.paragraphSemiBold,
          ),
        ),
      ],
    );
  }
}
