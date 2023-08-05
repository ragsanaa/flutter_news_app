import 'package:flutter/material.dart';
import 'package:flutter_eigth/constants/local_list.dart';
import 'package:flutter_eigth/widgets/news_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LocalNewsScreen extends StatefulWidget {
  const LocalNewsScreen({Key? key}) : super(key: key);

  @override
  State<LocalNewsScreen> createState() => _LocalNewsScreenState();
}

class _LocalNewsScreenState extends State<LocalNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your local news',
                      style: TextStyle(
                        fontFamily: 'GoogleSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        height: 3.00,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.circleQuestion,
                        color: Colors.blueAccent,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Image.network(
                    'https://i.pinimg.com/originals/da/2c/80/da2c80e66fe4bd3a539631bbc8724a8f.png',
                    width: 81,
                    height: 81,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 26,
                  left: 26,
                  child: ClipOval(
                    child: Image.network(
                      'https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2023/02/01210427/Featured-Inside.jpeg',
                      width: 55,
                      height: 55,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Baku',
                          style: GoogleFonts.lora(
                            fontSize: 13,
                            height: 1,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 20, 107, 178),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // Positioned(
            //   top: 100,
            //   right: 0,
            //   child: Image.asset(
            //     'assets/images/add_to_photo.png',
            //     width: 40,
            //     height: 40,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1.0,
                    height: 20,
                  ),
                ),
              ],
            ),
            NewsWidget(
              url: localList[0].url,
              imgPath: localList[0].imgPath,
              title: localList[0].title,
              logoPath: localList[0].logoPath,
              time: localList[0].time,
              isTopStory: true,
              pressName: localList[0].pressName,
              isNewsIconOn: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: localList[1].url,
              imgPath: localList[1].imgPath,
              title: localList[1].title,
              logoPath: localList[1].logoPath,
              time: localList[1].time,
              isTopStory: false,
              pressName: localList[1].pressName,
              isNewsIconOn: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: localList[2].url,
              imgPath: localList[2].imgPath,
              title: localList[2].title,
              logoPath: localList[2].logoPath,
              time: localList[2].time,
              isTopStory: false,
              pressName: localList[2].pressName,
              isNewsIconOn: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: localList[3].url,
              imgPath: localList[3].imgPath,
              title: localList[3].title,
              logoPath: localList[3].logoPath,
              time: localList[3].time,
              isTopStory: false,
              pressName: localList[3].pressName,
              isNewsIconOn: false,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Divider(
                color: Colors.grey[300],
                thickness: 1,
              ),
            ),
            NewsWidget(
              url: localList[4].url,
              imgPath: localList[4].imgPath,
              title: localList[4].title,
              logoPath: localList[4].logoPath,
              time: localList[4].time,
              isTopStory: false,
              pressName: localList[4].pressName,
              isNewsIconOn: false,
            ),
          ],
        ),
      ),
    );
  }
}
