// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/news_list.dart';
import '../widgets/news_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Your briefing',
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        height: 1.75,
                      )),
                  Text(
                    'Wendesnay, July 27',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'GoogleSans',
                    ),
                  ),
                ]),
                OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: Colors.grey[300]!,
                        width: 1,
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.fromLTRB(20, 10, 10, 10),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Text(
                        '29˚C',
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'GoogleSans',
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Icon(
                      Icons.sunny,
                      color: Colors.amber,
                      size: 40,
                    ),
                  ]),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Top stories',
                    style: TextStyle(
                        color: Colors.blue[700],
                        fontFamily: 'GoogleSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  FaIcon(
                    FontAwesomeIcons.circleChevronRight,
                    color: Colors.blue[700],
                    size: 30,
                  )
                ],
              ),
            ),
            NewsWidget(
              url: news_list[0].url,
              imgPath: news_list[0].imgPath,
              title: news_list[0].title,
              logoPath: news_list[0].logoPath,
              time: news_list[0].time,
              isTopStory: true,
              pressName: news_list[0].pressName,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: news_list[1].url,
              imgPath: news_list[1].imgPath,
              title: news_list[1].title,
              logoPath: news_list[1].logoPath,
              time: news_list[1].time,
              pressName: news_list[1].pressName,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                'Picks for you',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontFamily: 'GoogleSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            NewsWidget(
              url: news_list[2].url,
              imgPath: news_list[2].imgPath,
              title: news_list[2].title,
              logoPath: news_list[2].logoPath,
              time: news_list[2].time,
              pressName: news_list[2].pressName,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: news_list[3].url,
              imgPath: news_list[3].imgPath,
              title: news_list[3].title,
              logoPath: news_list[3].logoPath,
              time: news_list[3].time,
              pressName: news_list[3].pressName,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsWidget(
              url: news_list[4].url,
              imgPath: news_list[4].imgPath,
              title: news_list[4].title,
              logoPath: news_list[4].logoPath,
              time: news_list[4].time,
              isFullCoverage: true,
              pressName: news_list[4].pressName,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: news_list[5].url,
              imgPath: news_list[5].imgPath,
              title: news_list[5].title,
              logoPath: news_list[5].logoPath,
              time: news_list[5].time,
              isFullCoverage: true,
              pressName: news_list[5].pressName,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NewsWidget(
              url: news_list[6].url,
              imgPath: news_list[6].imgPath,
              title: news_list[6].title,
              logoPath: news_list[6].logoPath,
              time: news_list[6].time,
              isNewsIconOn: false,
              pressName: news_list[6].pressName,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: news_list[7].url,
              imgPath: news_list[7].imgPath,
              title: news_list[7].title,
              logoPath: news_list[7].logoPath,
              time: news_list[7].time,
              isNewsIconOn: false,
              pressName: news_list[7].pressName,
            ),
          ],
        ),
      ),
    ]);
  }
}
