import 'package:flutter/material.dart';
class MainlineCurrent extends StatefulWidget {
  const MainlineCurrent({Key? key}) : super(key: key);

  @override
  State<MainlineCurrent> createState() => _MainlineCurrentState();
}

class _MainlineCurrentState extends State<MainlineCurrent> {


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
                child: const Center(
                  child: Text('Current Container 1'),
                ),
              ),
        const SizedBox(height: 16),
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
            child: Text('Current Container 2'),
          ),
        ),
      ],
    );




  }
}
