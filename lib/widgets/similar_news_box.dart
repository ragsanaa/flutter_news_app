// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final String title;
  final String logoPath;
  final String time;
  final String pressName;
  const CustomBox({
    super.key,
    required this.title,
    required this.logoPath,
    required this.time,
    required this.pressName,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Stack(
          children: [
            Container(
              height: 130,
              width: 320,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 238, 238),
                borderRadius: BorderRadius.circular(10),
                border:
                    Border.all(color: const Color.fromARGB(255, 240, 236, 236)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 3),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image(
                                image: NetworkImage(
                                  logoPath,
                                ),
                                height: 15,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                pressName,
                                style: TextStyle(
                                  fontFamily: 'GoogleSans',
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  color:
                                      const Color.fromARGB(255, 117, 117, 117),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Flexible(
                            child: Text(
                              title,
                              style: const TextStyle(
                                fontFamily: 'GoogleSans',
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 13,
              child: Text(
                time,
                style: TextStyle(
                  fontFamily: 'GoogleSans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  color: const Color.fromARGB(255, 117, 117, 117),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.more_vert),
                iconSize: 20,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
