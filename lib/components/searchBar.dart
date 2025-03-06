import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 400,
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 243, 109, 201)),
          borderRadius: BorderRadius.circular(50)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.search,
                  color: const Color.fromARGB(255, 243, 109, 201),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11),
                  child: Text(
                    "Search Song...",
                    style: TextStyle(
                        color: const Color.fromARGB(129, 221, 164, 203)),
                  ),
                )
              ],
            ),
            Icon(
              Icons.mic,
              color: const Color.fromARGB(255, 243, 109, 201),
            )
          ],
        ),
      ),
    );
  }
}
