import 'package:flutter/material.dart';
import 'package:simple_analog_clock/screens/widgets/clock.dart';
import 'package:simple_analog_clock/screens/widgets/country_card.dart';
import 'package:simple_analog_clock/screens/widgets/time_in_hour_and_minute.dart';
import 'package:simple_analog_clock/screens/widgets/time_zone.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            TimeZoneDetails(),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryCard(
                      country: "New York, USA",
                      timeZone: "+3 HRS | EST",
                      iconSrc: "assets/icons/Liberty.svg",
                      time: "9:20",
                      period: "PM",
                    ),
                    CountryCard(
                      country: "Sydney, AU",
                      timeZone: "+19 HRS | AEST",
                      iconSrc: "assets/icons/Sydney.svg",
                      time: "1:20",
                      period: "AM",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
