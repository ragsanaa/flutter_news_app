// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eigth/screens/following_screen.dart';
import 'package:flutter_eigth/screens/home_screen.dart';
import 'package:flutter_eigth/screens/local_news_screen.dart';
import 'package:flutter_eigth/screens/top_story_screen.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      backgroundColor: Color.fromARGB(255, 241, 244, 249),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(children: [
          Column(
            children: [
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.language),
                title: Text(
                  'Top stories',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TopStoryScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.curtains_rounded),
                title: Text(
                  'For you',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.star_border),
                title: Text(
                  'Following',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FollowingScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.search),
                title: Text(
                  'Saved searches',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 5, 10),
            child: Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
          ),
          Column(
            children: [
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.flag_outlined),
                title: Text(
                  'U.S.',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.public),
                title: Text(
                  'World',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.location_on_outlined),
                title: Text(
                  'Your local news',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LocalNewsScreen(),
                    ),
                  );
                },
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.business_outlined),
                title: Text(
                  'Business',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.memory_outlined),
                title: Text(
                  'Technology',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.theaters_outlined),
                title: Text(
                  'Entertainment',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.directions_bike),
                title: Text(
                  'Sports',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.science_outlined),
                title: Text(
                  'Science',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
              ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(Icons.fitness_center_outlined),
                title: Text(
                  'Health',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 5, 10),
            child: Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
          ),
          ListTile(
            title: Text('Languages & region',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  color: Colors.black,
                )),
            subtitle: Text(
              'English (United States)',
              style: TextStyle(
                fontFamily: 'GoogleSans',
                color: Colors.grey[800],
              ),
            ),
          ),
          ListTile(
            title: Text('Settings',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  color: Colors.black,
                )),
          ),
          ListTile(
            title: Text('Get the iOS app',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  color: Colors.black,
                )),
            trailing: Icon(Icons.open_in_new),
          ),
          ListTile(
            title: Text('Send feedback',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  color: Colors.black,
                )),
          ),
          ListTile(
            title: Text('Help',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  color: Colors.black,
                )),
            trailing: Icon(Icons.open_in_new),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 5, 10),
            child: Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 0, 0, 20),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Privacy',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.black,
                  )),
              TextSpan(
                  text: ' • ',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.black,
                    fontSize: 10,
                  )),
              TextSpan(
                  text: 'Terms',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.black,
                  )),
              TextSpan(
                  text: ' • ',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.black,
                    fontSize: 10,
                  )),
              TextSpan(
                  text: 'About Google',
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                    color: Colors.black,
                  )),
            ])),
          )
        ]),
      ),
    );
  }
}
