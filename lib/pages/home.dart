import 'package:flutter/material.dart';
import 'package:midterm/components/topSongSlider.dart';
import '../components/songGallery.dart';
import '../components/searchBar.dart';
import '../components/bottomNav.dart';
import 'explore.dart';
import 'menu.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "JukeVibe",
            style: TextStyle(
                color: const Color.fromARGB(255, 255, 137, 218),
                fontWeight: FontWeight.bold,
                fontSize: 27,
                shadows: [
                  Shadow(
                    color: Color.fromARGB(255, 243, 109, 201).withAlpha(178),
                    blurRadius: 15,
                  ),
                  Shadow(
                    color: Color.fromARGB(255, 243, 109, 201).withAlpha(128),
                    blurRadius: 25,
                  ),
                ]),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 37, 38, 66),
              const Color.fromARGB(255, 24, 22, 47),
            ], begin: Alignment.topLeft, end: Alignment.bottomCenter),
          ),
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            children: [
              // Home Page
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 105, bottom: 20),
                      child: SearchWidget(),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            TopSongs(),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Recently Played",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Icon(Icons.arrow_forward_ios,
                                    color: Colors.white, size: 20),
                              ],
                            ),
                            SizedBox(height: 10),
                            SongGallery(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Explore Page
              Explore(),
              // Menu Page
              Menu(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNav(
          selectedIndex: _selectedIndex,
          onItemTapped: _onItemTapped,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
