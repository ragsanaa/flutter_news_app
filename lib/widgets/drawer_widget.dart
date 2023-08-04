// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_eigth/constants/drawer.dart';
import 'package:flutter_eigth/widgets/base_widget.dart';

class DrawerWidget extends StatelessWidget {
  final int selectedIndex;
  const DrawerWidget({Key? key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        backgroundColor: Color.fromARGB(255, 241, 244, 249),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              itemCreator(context, drawerItems),
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
            ],
          ),
        ),
      ),
    );
  }

  Column itemCreator(BuildContext context, Map<IconData, String> drawerItems) {
    return Column(
      children: List.generate(
        drawerItems.length,
        (index) {
          if (index == 3) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: selectedIndex == index ? Colors.blue[100] : null,
                  ),
                  child: ListTile(
                    iconColor: Colors.black,
                    textColor: Colors.black,
                    leading: Icon(drawerItems.keys.elementAt(index)),
                    title: Text(
                      drawerItems.values.elementAt(index),
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                      ),
                    ),
                    onTap: () {
                      _onItemSelected(context, index);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 10, 5, 10),
                  child: Divider(
                    color: Colors.grey[400],
                    thickness: 1,
                  ),
                ),
              ],
            );
          } else {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: selectedIndex == index ? Colors.blue[100] : null,
              ),
              child: ListTile(
                iconColor: Colors.black,
                textColor: Colors.black,
                leading: Icon(drawerItems.keys.elementAt(index)),
                title: Text(
                  drawerItems.values.elementAt(index),
                  style: TextStyle(
                    fontFamily: 'GoogleSans',
                  ),
                ),
                onTap: () {
                  _onItemSelected(context, index);
                },
              ),
            );
          }
        },
      ),
    );
  }

  void _onItemSelected(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => (index < 4)
            ? BaseWidget(screenIndex: index)
            : BaseWidget(
                screenIndex: index,
                isEmptyScreen: true,
              ),
      ),
    );
  }
}
