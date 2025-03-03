import 'package:flutter/material.dart';
import 'components/song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This Expanded is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: const Color.fromARGB(255, 243, 109, 201),
              size: 28,
            ),
          ),
          title: Text(
            "JukeVibe",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 27),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 37, 38, 66),
              const Color.fromARGB(255, 24, 22, 47),
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 105, bottom: 15),
                  child: Container(
                    height: 40,
                    width: 400,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 243, 109, 201)),
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Icon(
                            Icons.search,
                            color: const Color.fromARGB(255, 243, 109, 201),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Text(
                            "Search Song...",
                            style: TextStyle(
                                color:
                                    const Color.fromARGB(129, 221, 164, 203)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Music Library",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album1.jpg",
                              songTitle: "Kill Bill",
                              artist: "SZA"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album2.jpg",
                              songTitle: "Blinding Lights",
                              artist: "The Weeknd"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album3.jpg",
                              songTitle: "Shape of You",
                              artist: "Ed Sheeran"),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album4.jpg",
                              songTitle: "Save Your Tears",
                              artist: "The Weeknd"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album5.jpg",
                              songTitle: "Levitating",
                              artist: "Dua Lipa"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album6.jpg",
                              songTitle: "As It Was",
                              artist: "Harry Styles"),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album7.jpg",
                              songTitle: "Flowers",
                              artist: "Miley Cyrus"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album8.jpg",
                              songTitle: "Stay",
                              artist: "The Kid LAROI & Justin Bieber"),
                        ),
                        Expanded(
                          child: SongCard(
                              coverPhoto: "assets/album9.jpg",
                              songTitle: "As It Was",
                              artist: "Harry Styles"),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
