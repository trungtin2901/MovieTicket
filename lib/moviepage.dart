// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.48,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/images/onepiece.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.35),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'John Wick Chapter 4',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(width: 15.0),
                                    Text(
                                      '5.0',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              '4k',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '2h 30m',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Action',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '19 Dec 2023',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Story Line',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Lorem ipsum dolor sit amet consectetur. Facilisis lorem consectetur in est ac. Accumsan eu etiam at tincidunt. Nisi fusce orci quis in hendrerit ultrices egestas mi. Sed dui aliquet nascetur tellus tellus magna',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Top Cast',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          height: 80,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              castMember('Keanu', 'assets/images/keanu.jpg'),
                              castMember('Lance', 'assets/images/lance.jpg'),
                              castMember('Liana', 'assets/images/liana.jpg'),
                              castMember(
                                  'Natalia', 'assets/images/natalia.jpg'),
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 15,
                              ),
                              child: Text('Get Reservation'),
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
        ],
      ),
    );
  }

  Widget castMember(String name, String imagePath) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
          SizedBox(height: 4),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
