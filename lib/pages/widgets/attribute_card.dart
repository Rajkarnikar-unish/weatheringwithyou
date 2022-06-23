import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapp/pages/widgets/widgets.dart';

class AttributeCardWidget extends StatelessWidget {
  const AttributeCardWidget({
    Key? key,
    required this.cardColor,
  }) : super(key: key);

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: cardColor,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              AttributeItemWidget(
                attributeName: 'Rain',
                attributeValue: '87%',
                icon: FontAwesomeIcons.cloudShowersHeavy,
              ),
              VerticalDivider(
                color: Colors.white38,
                // width: 20,
                thickness: 1,
              ),
              AttributeItemWidget(
                icon: FontAwesomeIcons.droplet,
                attributeName: 'Humidity',
                attributeValue: '15%',
              ),
              VerticalDivider(
                color: Colors.white38,
                thickness: 1,
              ),
              AttributeItemWidget(
                attributeName: 'Wind',
                icon: FontAwesomeIcons.wind,
                attributeValue: '10 km/h',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
