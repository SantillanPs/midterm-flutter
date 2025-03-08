import 'package:flutter/material.dart';
import '../components/songCard2.dart';
import '../components/albumSong.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 37, 38, 66),
              const Color.fromARGB(255, 24, 22, 47),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 105, left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New albums & singles",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 20),
                  ],
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AlbumSong(
                          coverPhoto: "assets/album9.jpg",
                          albumName: "Masshiro (pure white)",
                          artist: "Fuji Kaze"),
                      SizedBox(width: 15),
                      AlbumSong(
                          coverPhoto: "assets/album10.jpg",
                          albumName: "Anti-Hero",
                          artist: "Taylor Swift"),
                      SizedBox(width: 15),
                      AlbumSong(
                          coverPhoto: "assets/album1.jpg",
                          albumName: "Unholy",
                          artist: "Sam Smith & Kim Petras"),
                      SizedBox(width: 15),
                      AlbumSong(
                          coverPhoto: "assets/album2.jpg",
                          albumName: "About Damn Time",
                          artist: "Beyonce"),
                      SizedBox(width: 15),
                      AlbumSong(
                          coverPhoto: "assets/album3.jpg",
                          albumName: "Blinding Lights",
                          artist: "The Weeknd"),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Top songs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 20),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    Column(children: [
                      SongCard(
                          songTitle: "Blinding Lights",
                          artist: "The Weeknd",
                          coverPhoto: "assets/album9.jpg",
                          songNumber: 1),
                      SongCard(
                          songTitle: "Blinding Lights",
                          artist: "The Weeknd",
                          coverPhoto: "assets/album10.jpg",
                          songNumber: 2),
                      SongCard(
                          songTitle: "Blinding Lights",
                          artist: "The Weeknd",
                          coverPhoto: "assets/album1.jpg",
                          songNumber: 3),
                      SongCard(
                          songTitle: "Blinding Lights",
                          artist: "The Weeknd",
                          coverPhoto: "assets/album2.jpg",
                          songNumber: 4),
                    ]),
                    Column(
                      children: [
                        SongCard(
                            songTitle: "Blinding Lights",
                            artist: "The Weeknd",
                            coverPhoto: "assets/album3.jpg",
                            songNumber: 5),
                        SongCard(
                            songTitle: "Blinding Lights",
                            artist: "The Weeknd",
                            coverPhoto: "assets/album4.jpg",
                            songNumber: 6),
                        SongCard(
                            songTitle: "Blinding Lights",
                            artist: "The Weeknd",
                            coverPhoto: "assets/album5.jpg",
                            songNumber: 7),
                        SongCard(
                            songTitle: "Blinding Lights",
                            artist: "The Weeknd",
                            coverPhoto: "assets/album6.jpg",
                            songNumber: 8),
                      ],
                    )
                  ]),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
