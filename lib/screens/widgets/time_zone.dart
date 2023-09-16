import 'package:flutter/material.dart';

class TimeZoneDetails extends StatefulWidget {
  const TimeZoneDetails({super.key});

  @override
  State<TimeZoneDetails> createState() => _TimeZoneDetailsState();
}

class _TimeZoneDetailsState extends State<TimeZoneDetails> {

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    var timezone = now.timeZoneName;
    return Text(
              "Newport Beach, USA | $timezone",
              style: Theme.of(context).textTheme.bodyLarge,
            );
  }
}