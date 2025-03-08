import 'package:flutter/material.dart';

class AlbumSong extends StatelessWidget {
  const AlbumSong(
      {super.key,
      required this.coverPhoto,
      required this.albumName,
      required this.artist});

  final String coverPhoto;
  final String albumName;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(coverPhoto), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(height: 8),
          Text(
            albumName,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            "Single • $artist",
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
