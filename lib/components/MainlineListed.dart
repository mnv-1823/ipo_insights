import 'package:flutter/material.dart';

class MainlineListed extends StatefulWidget {
  const MainlineListed({Key? key}) : super(key: key);

  @override
  State<MainlineListed> createState() => _MainlineListedState();
}

class _MainlineListedState extends State<MainlineListed> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 380,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: const Text('Listed Container 1',
          style: TextStyle(

          ),),
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
            child: Text('Listed Container 2'),
          ),
        ),
      ],
    );




  }
}
