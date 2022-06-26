import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/pages/data/services/weather_services.dart';
import 'package:weatherapp/pages/homepage/widgets/widgets.dart';

import '../../utilities/utilities.dart';
import '../forecastpage/forecastpage.dart';
import '../widgets/widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  final WeatherServices _weatherServices = WeatherServices();

  Position? _currentPosition;

  _getCurrentLocation() async {
    LocationPermission? permission;
    bool? serviceEnabled;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled!');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied.');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, provide permissions to use feature.');
    }

    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((value) {
      setState(() {
        _currentPosition = value;
      });
      _weatherServices.getWeatherData(
          _currentPosition?.latitude, _currentPosition?.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              sBoxH24,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.place_rounded,
                    color: Colors.white,
                  ),
                  sBoxW4,
                  Text(
                    'Kathmandu, NP',
                    style: AppTextStyles.bodySemiBold,
                  ),
                ],
              ),
              Text(
                'Today, 22 June',
                style:
                    AppTextStyles.smallRegular.copyWith(color: Colors.white54),
              ),
              sBoxH16,
              FaIcon(
                FontAwesomeIcons.cloudBolt,
                color: Colors.white,
                size: 100.sp,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '10',
                    style: AppTextStyles.titleBold.copyWith(fontSize: 64.sp),
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
              Text(
                (_currentPosition == null)
                    ? 'Loading...'
                    : '${_currentPosition?.latitude} ${_currentPosition?.longitude}',
                style: AppTextStyles.paragraphBold.copyWith(
                  color: Colors.white38,
                ),
              ),
              sBoxH20,
              const AttributeCardWidget(
                cardColor: Colors.white12,
              ),
              sBoxH16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Today',
                    style: AppTextStyles.bodySemiBold,
                  ),
                  GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, Forecastpage.routeName),
                    child: Row(
                      children: [
                        Text(
                          'Next 7 days',
                          style: AppTextStyles.paragraphRegular
                              .copyWith(color: Colors.white54),
                        ),
                        sBoxW4,
                        Icon(
                          Icons.chevron_right_rounded,
                          color: Colors.white54,
                          size: 30.sp,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              sBoxH8,
              SizedBox(
                height: 110, // MediaQuery.of(context).size.height * 0.15,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => HourlyUpdateWidget(),
                  separatorBuilder: (context, index) => sBoxW12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
