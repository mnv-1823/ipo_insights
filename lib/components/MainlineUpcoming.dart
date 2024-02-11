import 'package:flutter/material.dart';
class MainlineUpcoming extends StatefulWidget {
  const MainlineUpcoming({Key? key}) : super(key: key);

  @override
  State<MainlineUpcoming> createState() => _MainlineUpcomingState();
}

class _MainlineUpcomingState extends State<MainlineUpcoming> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text('Upcoming Container 1'),
          ),
        ),
        SizedBox(height: 16),
        Container(
          height: 190,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Center(
            child: Text('Upcoming Container 2'),
          ),
        ),
      ],
    );



  }
}
