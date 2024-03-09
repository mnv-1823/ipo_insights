import 'package:flutter/material.dart';
class MainlineCurrent extends StatefulWidget {
  const MainlineCurrent({Key? key}) : super(key: key);

  @override
  State<MainlineCurrent> createState() => _MainlineCurrentState();
}

class _MainlineCurrentState extends State<MainlineCurrent> {
   _onContainerClicked(String companyName) {
    // Handle the container click event here, you can navigate to another screen or perform any other action
    print('Container clicked: $companyName');
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: _onContainerClicked('Company Name 1'),
          child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  child: const Column(
          
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.business_sharp,
                          size: 50,
                          color: Colors.blue,),
                          Text('Company Name 1', style: TextStyle(fontSize: 20)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.business_sharp,
                            size: 50,
                            color: Colors.blue,),
                          Text('Company Name 1', style: TextStyle(fontSize: 20)),
                        ],
                      ),
          
                    ],
                  ),
          
                ),
        ),
        const SizedBox(height: 16),
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(

              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.business_sharp,
                    size: 50,
                    color: Colors.blue,),
                  Text('Company Name 1', style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.business_sharp,
                    size: 50,
                    color: Colors.blue,),
                  Text('Company Name 1', style: TextStyle(fontSize: 20)),
                ],
              ),

            ],
          ),

        ),
      ],
    );




  }
}
