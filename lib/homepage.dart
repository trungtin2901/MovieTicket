// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Opacity(
                        opacity: 0.8,
                        child: Image.asset(
                          'lib/images/johnwick.png',
                          fit: BoxFit.cover,
                          height: 370,
                          width: double.infinity,
                        ),
                      ),
                      
                      Positioned(
                        child: AppBar(
                          leading: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 30,
                          ),
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                        ),
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  color: Colors.grey[700],
                                  child: Icon(
                                    Icons.play_arrow,
                                    color: Colors.white,
                                    size: 50,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Watch Trailer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'John Wick Chapter 4',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
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
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            color: Colors.grey[900],
                            child: Text(
                              '4k',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 183, 183, 183)),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '2h 30m',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 183, 183, 183)),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '•',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          'Action',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 183, 183, 183)),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '•',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          '19 Dec 2023',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 183, 183, 183)),
                        ),
                        SizedBox(width: 15),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Story Line',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 16.0, right: 16.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet consectetur. Facilisis lorem consectetur in est ac. Accumsan eu etiam at tincidunt. Nisi fusce orci quis in hendrerit ultricies egestas mi. Sed dui aliquet nascetur tellus tellus magna.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        color: const Color.fromARGB(255, 183, 183, 183),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Top Cast',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 110,
                    padding: EdgeInsets.only(left: 16.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        buildCastItem('lib/images/john.png', 'Keanu'),
                        SizedBox(width: 10),
                        buildCastItem('lib/images/lance.png', 'Lance'),
                        SizedBox(width: 10),
                        buildCastItem('lib/images/liana.png', 'Liana'),
                        SizedBox(width: 10),
                        buildCastItem('lib/images/natalia.webp', 'Natalia'),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5, // Increase the bottom spacing
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      textStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    child: Text('Get Reservation'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildCastItem(String imagePath, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisSize: MainAxisSize
            .min, // This will prevent the Column from expanding to fit its children
        children: [
          CircleAvatar(
            radius: 35, // Reduced radius from 40 to 30
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 7),
          Flexible(
            child: Text(
              name,
              style: TextStyle(
                  color: Colors.white, fontSize: 14), // Reduced font size
              overflow: TextOverflow.ellipsis, // Ensure text does not overflow
            ),
          ),
        ],
      ),
    );
  }
}
