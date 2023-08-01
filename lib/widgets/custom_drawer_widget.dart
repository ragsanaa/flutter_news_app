// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/drawer.dart';

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
            children: drawerList(drawer_items),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 10, 5, 10),
            child: Divider(
              color: Colors.grey[400],
              thickness: 1,
            ),
          ),
          Column(
            children: drawerList(drawer_items_other),
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
