import 'package:flutter/material.dart';
import 'package:flutter_eigth/widgets/cards_widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'following_screen.dart';

class ManageLocalNewsScreen extends StatelessWidget {
  const ManageLocalNewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Manage local news',
          style: TextStyle(
            fontFamily: 'GoogleSans',
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 3.00,
          ),
        ),
        actions: [
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.fromLTRB(20, 25, 20, 25),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 221, 221, 221),
                  hintText: 'Enter city or zip code',
                  prefixIcon: Icon(Icons.search),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    'Your local news',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Align(alignment: Alignment.center, child: CardsWidget(data[5])),
              SizedBox(height: 20),
              Text(
                'Suggested for you',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              StarIconWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class StarIconWidget extends StatefulWidget {
  @override
  _StarIconWidgetState createState() => _StarIconWidgetState();
}

class _StarIconWidgetState extends State<StarIconWidget> {
  bool isStarred = false;

  void toggleStar() {
    setState(() {
      isStarred = !isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleStar,
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.travelandleisureasia.com/wp-content/uploads/sites/2/2023/02/01210427/Featured-Inside.jpeg',
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Baku',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.w700,
                  ),
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: isStarred
                      ? Icon(
                          Icons.star,
                          color: Colors.yellow[700],
                          key: UniqueKey(),
                        )
                      : Icon(
                          Icons.star_border,
                          color: Colors.grey[400],
                          key: UniqueKey(),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
