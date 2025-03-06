import 'package:flutter/material.dart';
import './song.dart';

class SongGallery extends StatelessWidget {
  const SongGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongCard(
                  coverPhoto: "assets/album1.jpg",
                  songTitle: "Starboy",
                  artist: "The Weeknd"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album2.jpg",
                  songTitle: "Anti-Hero",
                  artist: "Taylor Swift"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album3.jpg",
                  songTitle: "Unholy",
                  artist: "Sam Smith & Kim Petras"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album4.jpg",
                  songTitle: "About Damn Time",
                  artist: "Lizzo"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album5.jpg",
                  songTitle: "Break My Soul",
                  artist: "Beyoncé"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album6.jpg",
                  songTitle: "As It Was",
                  artist: "Harry Styles"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongCard(
                  coverPhoto: "assets/album4.jpg",
                  songTitle: "Running Up That Hill",
                  artist: "Kate Bush"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album5.jpg",
                  songTitle: "Hold Me Closer",
                  artist: "Elton John & Britney Spears"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album6.jpg",
                  songTitle: "Late Night Talking",
                  artist: "Harry Styles"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album7.jpg",
                  songTitle: "Super Freaky Girl",
                  artist: "Nicki Minaj"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album8.jpg",
                  songTitle: "I'm Good (Blue)",
                  artist: "David Guetta & Bebe Rexha"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album9.jpg",
                  songTitle: "2 Be Loved",
                  artist: "Lizzo"),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SongCard(
                  coverPhoto: "assets/album7.jpg",
                  songTitle: "About Damn Time",
                  artist: "Lizzo"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album8.jpg",
                  songTitle: "Vegas",
                  artist: "Doja Cat"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album9.jpg",
                  songTitle: "Hold Me Closer",
                  artist: "Elton John & Britney Spears"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album10.jpg",
                  songTitle: "Late Night Talking",
                  artist: "Harry Styles"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album1.jpg",
                  songTitle: "Super Freaky Girl",
                  artist: "Nicki Minaj"),
              SizedBox(width: 15),
              SongCard(
                  coverPhoto: "assets/album2.jpg",
                  songTitle: "2 Be Loved",
                  artist: "Lizzo"),
            ],
          ),
        ],
      ),
    );
  }
}
