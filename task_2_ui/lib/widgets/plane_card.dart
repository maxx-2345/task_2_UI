import 'package:flutter/material.dart';

class PlaneCard extends StatefulWidget {
  final String? time;
  final String? meetingType;
  final String? meetingDetails;
  const PlaneCard(
      {super.key, this.time, this.meetingType, this.meetingDetails});

  @override
  State<PlaneCard> createState() => _PlaneCardState();
}

class _PlaneCardState extends State<PlaneCard> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
