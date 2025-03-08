import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final String coverPhoto;
  final String songTitle;
  final String artist;
  const SongCard(
      {super.key,
      required this.coverPhoto,
      required this.songTitle,
      required this.artist});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(coverPhoto), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            songTitle,
            style: TextStyle(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          Text(
            artist,
            style: TextStyle(color: Colors.grey, fontSize: 8),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}
