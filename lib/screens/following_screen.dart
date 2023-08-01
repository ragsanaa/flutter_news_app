// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eigth/classes/following.dart';

class FollowingScreen extends StatefulWidget {
  const FollowingScreen({super.key});

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: DefaultTabController(
          child: Column(
            children: [
              TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Colors.blue[700],
                labelColor: Colors.blue[700],
                isScrollable: true,
                labelStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'GoogleSans',
                ),
                unselectedLabelColor: Colors.grey[600],
                tabs: [
                  Tab(
                    text: 'Topics & sources',
                  ),
                  Tab(text: 'Saved searches'),
                  Tab(text: 'Saved stories'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListView(
                      children: [
                        cards(data[0]),
                        cards(data[1]),
                        cards(data[2]),
                      ],
                    ),
                    cards(data[3]),
                    cards(data[4]),
                  ],
                ),
              ),
            ],
          ),
          length: 3),
    );
  }

  Column cards(Following data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (data.title != '')
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(data.title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'GoogleSans')),
                if (data.isManage)
                  Text('Manage local news',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GoogleSans',
                          color: Colors.blue[700])),
              ],
            ),
          ),
        SizedBox(
          width: double.infinity,
          child: Card(
            margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.grey.shade400, width: 1),
            ),
            elevation: 0,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 30),
                  child: Image.asset(
                    data.image,
                    height: 180,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    data.description,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}

List<Following> data = [
  Following(
      title: 'Topics',
      description:
          'When you follow a topic it will appear here. You\'ll also see more related stories in the For You feed.',
      image: 'assets/images/topics.png'),
  Following(
      title: 'Local',
      description: 'When you follow a location it will appear here.',
      image: 'assets/images/local.png',
      isManage: true),
  Following(
      title: 'Sources',
      description:
          'When you follow a source it will appear here. You\'ll also see more stories from that source in the For You feed.',
      image: 'assets/images/sources.png'),
  Following(
      description: 'Your saved searches will appear here.',
      image: 'assets/images/ssearches.png'),
  Following(
      description: 'Your saved stories will appear here.',
      image: 'assets/images/sstories.png'),
];
