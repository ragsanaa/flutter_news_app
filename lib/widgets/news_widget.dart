// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final String logoPath;
  final String time;
  final bool isTopStory;
  final bool isFullCoverage;
  final bool isNewsIconOn;

  const NewsWidget({
    super.key,
    required this.imgPath,
    required this.title,
    required this.logoPath,
    required this.time,
    this.isTopStory = false,
    this.isFullCoverage = false,
    this.isNewsIconOn = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isTopStory)
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(logoPath, height: 16),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            if (isTopStory == false)
              Expanded(
                flex: 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imgPath,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Text(
                time,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'GoogleSans',
                    fontSize: 15),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!isFullCoverage && isNewsIconOn)
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0),
                      child: Image.asset(
                        'assets/images/news_icon.png',
                        height: 20,
                      ),
                    ),
                  Icon(Icons.more_vert, size: 15),
                ],
              ),
            )
          ],
        ),
        if (isFullCoverage)
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  side: BorderSide(color: Colors.grey[400]!),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Image.asset(
                        'assets/images/news_icon.png',
                        height: 30,
                      ),
                    ),
                    Text(
                      'Full Coverage of the story',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'GoogleSans',
                          color: Colors.black),
                    ),
                  ],
                )),
          )
      ],
    );
  }
}
