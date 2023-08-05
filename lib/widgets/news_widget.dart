// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eigth/widgets/similar_news_box.dart';

import '../screens/news_webview.dart';

class NewsWidget extends StatefulWidget {
  final String url;
  final String imgPath;
  final String title;
  final String logoPath;
  final String time;
  final String pressName;
  final bool isTopStory;
  final bool isFullCoverage;
  final bool isNewsIconOn;
  final bool isSimilarNews;

  const NewsWidget({
    super.key,
    required this.url,
    required this.imgPath,
    required this.title,
    required this.logoPath,
    required this.time,
    this.isTopStory = false,
    this.isFullCoverage = false,
    this.isNewsIconOn = true,
    this.isSimilarNews = false,
    required this.pressName,
  });

  @override
  State<NewsWidget> createState() => _NewsWidgetState();
}

class _NewsWidgetState extends State<NewsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isTopStory)
          GestureDetector(
            onTap: () {
              setState(() {
                urlGlobal = widget.url;
              });
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const NewsWebView()));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.imgPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        GestureDetector(
          onTap: () {
            setState(() {
              urlGlobal = widget.url;
            });
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const NewsWebView()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(widget.logoPath, height: 16),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                      child: Text(
                        widget.title,
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
              if (widget.isTopStory == false)
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      widget.imgPath,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Text(
                widget.time,
                style: TextStyle(
                    color: Colors.grey[600],
                    fontFamily: 'GoogleSans',
                    fontSize: 15),
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!widget.isFullCoverage && widget.isNewsIconOn)
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Image.asset(
                        'assets/images/news_icon.png',
                        height: 20,
                      ),
                    ),
                  PopupMenuButton<int>(
                    shadowColor: Colors.grey,
                    surfaceTintColor: Colors.white,
                    offset: Offset(0, 50),
                    icon: Icon(Icons.more_vert),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                          value: 0,
                          child: ListTile(
                            leading: Icon(Icons.bookmark_border),
                            title: Text('Save for later'),
                          )),
                      PopupMenuItem(
                          value: 1,
                          child: ListTile(
                            leading: Icon(Icons.share),
                            title: Text('Share'),
                          )),
                      PopupMenuItem(
                          value: 2,
                          child: ListTile(
                            leading: Image.asset('assets/images/news_icon.png',
                                height: 20),
                            title: Text('View full coverage'),
                          )),
                      PopupMenuItem(
                          value: 3,
                          child: ListTile(
                            leading: Icon(Icons.link),
                            title: Text('Go to the ${widget.pressName}'),
                          )),
                      PopupMenuItem(
                          value: 3,
                          child: ListTile(
                            leading: Icon(Icons.block),
                            title: Text(
                                'Hide all stories from ${widget.pressName}'),
                          )),
                      PopupMenuItem(
                          value: 3,
                          child: ListTile(
                            leading: Icon(Icons.thumb_up),
                            title: Text('More stories like this'),
                          )),
                      PopupMenuItem(
                          value: 3,
                          child: ListTile(
                            leading: Icon(Icons.thumb_down),
                            title: Text('Fewer stories like this'),
                          )),
                    ],
                    onSelected: handleClick,
                  ),
                ],
              ),
            )
          ],
        ),
        if (widget.isSimilarNews)
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        urlGlobal =
                            "https://www.foxnews.com/world/canadian-prime-minister-justin-trudeau-wife-18-years-announce-separation";
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewsWebView()));
                    },
                    child: CustomBox(
                        url:
                            "https://www.foxnews.com/world/canadian-prime-minister-justin-trudeau-wife-18-years-announce-separation",
                        title:
                            'Canadian Prime Minister Justin Trudeau, wife of 18 years announce separation',
                        logoPath:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Fox_News_Channel_logo.svg/1024px-Fox_News_Channel_logo.svg.png',
                        time: '1 hour ago',
                        pressName: 'Fox News'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        urlGlobal =
                            "https://www.mmorpg.com/news/ashes-of-creation-shows-updated-cleric-highwaymen-hills-location-and-dynamic-systems-in-verra-2000128585";
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewsWebView()));
                    },
                    child: CustomBox(
                        url:
                            "https://www.mmorpg.com/news/ashes-of-creation-shows-updated-cleric-highwaymen-hills-location-and-dynamic-systems-in-verra-2000128585",
                        title:
                            'Ashes of Creation Shows Updated Cleric, Highwaymen Hills Location, and Dynamic Systems in Verra',
                        logoPath:
                            'https://images.mmorpg.com/images/mmorpg_logo.png',
                        time: '2 hours ago',
                        pressName: 'MMORPG'),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        urlGlobal =
                            "https://www.sportingnews.com/in/football/news/how-many-goals-cristiano-ronaldo-scored-al-nassr-stats-2023-2024/kysql9ycepndbqhogclzdzwc";
                      });
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const NewsWebView()));
                    },
                    child: CustomBox(
                        url:
                            "https://www.sportingnews.com/in/football/news/how-many-goals-cristiano-ronaldo-scored-al-nassr-stats-2023-2024/kysql9ycepndbqhogclzdzwc",
                        title:
                            'How many goals has Cristiano Ronaldo scored at Al Nassr this season? CR7 stats in Saudi Arabia in 2023-2024',
                        logoPath:
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/The_Sporting_News_logo_2022.svg/639px-The_Sporting_News_logo_2022.svg.png',
                        time: '2 hours ago',
                        pressName: 'TS News'),
                  ),
                ],
              ),
            ),
          ),
        if (widget.isFullCoverage)
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

void handleClick(int item) {
  switch (item) {
    case 0:
      break;
    case 1:
      break;
  }
}
