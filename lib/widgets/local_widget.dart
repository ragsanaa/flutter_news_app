import 'package:flutter/material.dart';

class LocalWidget extends StatelessWidget {
  final String imgPath;
  final String title;
  final String logoPath;
  final String time;
  final bool isTopStory;
  final bool isFullCoverage;
  final bool isNewsIconOn;

  const LocalWidget({
    Key? key,
    required this.imgPath,
    required this.title,
    required this.logoPath,
    required this.time,
    this.isTopStory = false,
    this.isFullCoverage = false,
    this.isNewsIconOn = true,
  }) : super(key: key);

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
      ],
    );
  }
}
