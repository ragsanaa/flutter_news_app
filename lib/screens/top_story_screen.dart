// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_eigth/widgets/news_widget.dart';

class TopStoryScreen extends StatefulWidget {
  const TopStoryScreen({super.key});

  @override
  State<TopStoryScreen> createState() => _TopStoryScreenState();
}

class _TopStoryScreenState extends State<TopStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 13),
              child: Text(
                'Headlines',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.75,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url:
                  "https://www.axios.com/2023/07/31/devon-archer-testify-hunter-biden",
              imgPath:
                  'https://images.axios.com/Xz8dywtvKPZvur2pMKmT0lqe2mU=/1920x1080/smart/2023/07/31/1690837536781.jpg?w=1920',
              title: 'Hunter Biden associate describes "illusion of access"',
              logoPath:
                  'https://cdn.icon-icons.com/icons2/2699/PNG/512/axios_logo_icon_168545.png',
              time: '50 minutes ago',
              isTopStory: true,
              isFullCoverage: true,
              isSimilarNews: true,
              pressName: 'Axios',
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url: "https://www.bbc.com/news/world-europe-66368016",
              imgPath:
                  'https://ichef.bbci.co.uk/news/976/cpsprodpb/760C/production/_130602203_moscow_drone_attack.jpg.webp',
              title:
                  'Ukraine war: Kyiv warns Russia as Moscow skyscraper hit in second drone attack',
              logoPath:
                  'https://w7.pngwing.com/pngs/850/1001/png-transparent-computer-icons-logo-of-the-bbc-bbc-world-news-uc-browser-text-rectangle-logo-thumbnail.png',
              time: '1 hour ago',
              isTopStory: true,
              isFullCoverage: true,
              pressName: 'BBC News',
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url:
                  "https://apnews.com/article/henrietta-lacks-hela-cells-thermo-fisher-scientific-bfba4a6c10396efa34c9b79a544f0729",
              imgPath:
                  'https://dims.apnews.com/dims4/default/3293b73/2147483647/strip/true/crop/4919x3278+0+71/resize/980x653!/format/webp/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2F3a%2F16%2F754a93a02093e716ecccab906f17%2F3cf1b209c56d46fda2a4691eda78d7bd',
              title:
                  'Thermo Fisher Scientific settles with family of Henrietta Lacks, whose HeLa cells uphold medicine',
              logoPath:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Associated_Press_logo_2012.svg/800px-Associated_Press_logo_2012.svg.png',
              time: '2 hours ago',
              isTopStory: true,
              isFullCoverage: true,
              pressName: 'Associated Press',
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url:
                  "https://apnews.com/article/trump-legal-bills-pac-defense-fund-campaign-filing-2024-36fe10e4988a56de34f120cff38e1552",
              imgPath:
                  'https://dims.apnews.com/dims4/default/0f5fa58/2147483647/strip/true/crop/4518x3012+0+0/resize/1440x960!/format/webp/quality/90/?url=https%3A%2F%2Fassets.apnews.com%2Fb4%2Fe5%2F6fe440a63afca1b6db354632cd79%2F89dde514273d46069ff7f9b00066ac36',
              title:
                  'Trump’s campaign finances are strained as legal peril mounts',
              logoPath:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Associated_Press_logo_2012.svg/800px-Associated_Press_logo_2012.svg.png',
              time: '2 hours ago',
              isTopStory: true,
              isFullCoverage: true,
              pressName: 'Associated Press',
            ),
          ),
          Divider(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Read more stories from Headlines',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Divider(height: 30, thickness: 8),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'For you',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  height: 1.75,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 35),
              child: Text(
                'Recommended based on your interests',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.normal,
                  fontSize: 17,
                  color: Colors.black87,
                  height: 0.5,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url:
                  "https://www.mmorpg.com/news/ashes-of-creation-shows-updated-cleric-highwaymen-hills-location-and-dynamic-systems-in-verra-2000128585",
              imgPath:
                  'https://media.mmorpg.com/images/heroes/posts/128585.jpg?cb=5E2406AB9677EC4F56C82695634BE9A5',
              title:
                  'Ashes of Creation Shows Updated Cleric, Highwaymen Hills Location, and Dynamic Systems in Verra',
              logoPath: 'https://images.mmorpg.com/images/mmorpg_logo.png',
              time: 'yesterday',
              isNewsIconOn: false,
              pressName: 'MMORPG',
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsWidget(
              url:
                  "https://www.sportingnews.com/in/football/news/how-many-goals-cristiano-ronaldo-scored-al-nassr-stats-2023-2024/kysql9ycepndbqhogclzdzwc",
              imgPath:
                  'https://library.sportingnews.com/styles/crop_style_16_9_desktop_webp/s3/2023-07/cristiano%20ronaldo%20al%20nassr%202023-2024.jpg.webp?itok=qQ0t2I7m',
              title:
                  'How many goals has Cristiano Ronaldo scored at Al Nassr this season? CR7 stats in Saudi Arabia in 2023-2024',
              logoPath:
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/The_Sporting_News_logo_2022.svg/639px-The_Sporting_News_logo_2022.svg.png',
              time: 'yesterday',
              isNewsIconOn: false,
              pressName: 'Sporting News',
            ),
          ),
          Divider(),
          Center(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Read more stories from For you',
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Divider(height: 30, thickness: 8),
        ],
      ),
    );
  }
}
