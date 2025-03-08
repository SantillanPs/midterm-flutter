import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final String songTitle;
  final String artist;
  final String coverPhoto;
  final int songNumber;
  const SongCard(
      {super.key,
      required this.songTitle,
      required this.artist,
      required this.coverPhoto,
      required this.songNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 10, right: 30),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            child: Center(
              child: Text(
                songNumber.toString(),
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 45,
                ),
              ),
            ),
          ),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(coverPhoto), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                songTitle,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                artist,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
