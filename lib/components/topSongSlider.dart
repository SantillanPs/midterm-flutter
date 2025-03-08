import 'package:flutter/material.dart';
import 'songCard.dart';

class TopSongs extends StatelessWidget {
  const TopSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Songs",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.white, size: 20),
            ],
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SongCard(
                  coverPhoto: "assets/album1.jpg",
                  songTitle: "Blinding Lights",
                  artist: "The Weeknd",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album2.jpg",
                  songTitle: "Stay With Me",
                  artist: "Sam Smith",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album3.jpg",
                  songTitle: "Bad Guy",
                  artist: "Billie Eilish",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album4.jpg",
                  songTitle: "Levitating",
                  artist: "Dua Lipa",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album5.jpg",
                  songTitle: "Watermelon Sugar",
                  artist: "Harry Styles",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album6.jpg",
                  songTitle: "drivers license",
                  artist: "Olivia Rodrigo",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album7.jpg",
                  songTitle: "Save Your Tears",
                  artist: "The Weeknd",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album8.jpg",
                  songTitle: "good 4 u",
                  artist: "Olivia Rodrigo",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album9.jpg",
                  songTitle: "Peaches",
                  artist: "Justin Bieber",
                ),
                SizedBox(width: 15),
                SongCard(
                  coverPhoto: "assets/album10.jpg",
                  songTitle: "Kiss Me More",
                  artist: "Doja Cat ft. SZA",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
