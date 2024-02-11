import 'package:flutter/material.dart';
import 'package:ipo_insights/components/MailineCurrent.dart';
import 'package:ipo_insights/components/MainlineListed.dart';
import 'package:ipo_insights/components/MainlineUpcoming.dart';

import 'loginPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _showSearchDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Search'),
        content: TextField(
          decoration: InputDecoration(
            hintText: 'Enter search query',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Search'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mainline IPO'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => _showSearchDialog(context),
            ),
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {

              },
            ),
          ],
          bottom: TabBar(
            //isScrollable: true,
            splashBorderRadius: BorderRadius.circular(11.0),
            tabs: const [
              Tab(text: 'Current'),
              Tab(text: 'Upcoming'),
              Tab(text: 'Listed')
            ],
          ),
        ),

        body: const TabBarView(

          children:[ SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  MainlineCurrent(),
                ],
              ),
            ),
          ),
            //---------Upcoming---------
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MainlineUpcoming(),
                  ],
                ),
              ),
            ),

            //---------Listed------------
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MainlineListed(),
                  ],
                ),
              ),
            ),


          ]
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple[700],
                ),
                child: Text(
                  'Welcome Investor!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text('HOME'),
                onTap: () {

                },
              ),
              ListTile(

                title: Text('FAQ'),
                onTap: () {

                },
              ),

              ListTile(
                title: Text('Share App'),
                onTap: () {

                },
              ),
              ListTile(
                title: Text('Logout'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}