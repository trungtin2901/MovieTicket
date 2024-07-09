// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       bottomNavigationBar: Container(
         color: Color.fromARGB(255, 31, 31, 31),
         child: Padding(
           padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
           child: GNav(
             backgroundColor: Color.fromARGB(255, 31, 31, 31),
             color: Colors.white,
             gap: 8, // gap is between icon and text
             activeColor: Colors.white, // icon color when active
             tabBackgroundColor: Color.fromARGB(255, 243, 20, 52), // background color of tabs
             padding: EdgeInsets.only(left: 19.0, right: 19.0, top: 12.0, bottom: 12.0),
             tabs: [
               GButton(
                 icon: Icons.movie_creation_outlined,
                 text: 'Movies',
               ),
               GButton(
                 icon: Icons.grid_view,
                 text: 'Favorite',
               ),
               GButton(
                 icon: Icons.bookmarks_outlined,
                 text: 'Search',
               ),
               GButton(
                 icon: Icons.person_outline,
                 text: 'Settings',
               ),
             ],
           ),
        ),
      ),
    
    );
  }
}