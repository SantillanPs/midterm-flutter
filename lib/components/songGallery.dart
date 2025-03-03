import 'package:flutter/material.dart';
import './song.dart';

class SongGallery extends StatelessWidget {
  const SongGallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SongCard(
                coverPhoto: "assets/album1.jpg",
                songTitle: "Kill Bill",
                artist: "SZA"),
            SongCard(
                coverPhoto: "assets/album2.jpg",
                songTitle: "Blinding Lights",
                artist: "The Weeknd"),
            SongCard(
                coverPhoto: "assets/album3.jpg",
                songTitle: "Shape of You",
                artist: "Ed Sheeran"),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SongCard(
                coverPhoto: "assets/album4.jpg",
                songTitle: "Save Your Tears",
                artist: "The Weeknd"),
            SongCard(
                coverPhoto: "assets/album5.jpg",
                songTitle: "Levitating",
                artist: "Dua Lipa"),
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
                coverPhoto: "assets/album7.jpg",
                songTitle: "Flowers",
                artist: "Miley Cyrus"),
            SongCard(
                coverPhoto: "assets/album8.jpg",
                songTitle: "Stay",
                artist: "The Kid LAROI & Justin Bieber"),
            SongCard(
                coverPhoto: "assets/album9.jpg",
                songTitle: "As It Was",
                artist: "Harry Styles"),
          ],
        ),
      ],
    );
  }
}
