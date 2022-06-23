import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utilities/utilities.dart';

class AttributeItemWidget extends StatelessWidget {
  const AttributeItemWidget({
    Key? key,
    required this.icon,
    required this.attributeName,
    required this.attributeValue,
  }) : super(key: key);

  final IconData icon;
  final String attributeName;
  final String attributeValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FaIcon(
          icon,
          color: Colors.lightBlue,
          size: 28.sp,
        ),
        sBoxH4,
        Text(
          attributeValue,
          style: AppTextStyles.paragraphBold,
        ),
        Text(
          attributeName,
          style: AppTextStyles.smallSemiBold.copyWith(color: Colors.white54),
        ),
      ],
    );
  }
}
