import 'package:flutter/material.dart';
import 'components/songGallery.dart';
import 'components/searchBar.dart';

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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27),
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
                      child: SearchWidget()),
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
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SongGallery(),
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
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 37, 38, 66),
              const Color.fromARGB(255, 28, 33, 53),
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
            child: BottomNavigationBar(
              backgroundColor: Colors.transparent,
              selectedItemColor:
                  const Color.fromARGB(255, 243, 109, 201), // Active icon color
              unselectedItemColor: const Color.fromARGB(
                  121, 231, 131, 200), // Inactive icon color
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "Profile"),
              ],
            ),
          )),
    );
  }
}
