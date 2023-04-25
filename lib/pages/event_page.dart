import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});
  static const routeName = '/eventpage';

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: GFCard(
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
