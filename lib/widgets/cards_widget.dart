import 'package:flutter/material.dart';

import '../classes/following.dart';
import '../screens/manage_local_news_screen.dart';

class CardsWidget extends StatelessWidget {
  final Following data;
  const CardsWidget(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  TextButton(
                    child: Text(
                      'Manage local news',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'GoogleSans',
                          color: Colors.blue[700]),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ManageLocalNewsScreen()));
                    },
                  ),
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
