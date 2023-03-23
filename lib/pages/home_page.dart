import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'feed_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _pages = [
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
    FeedPage(),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        brightness: Brightness.light,
        centerTitle: true,
        title: const Text(
          "Instagram",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Feather.camera,
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Feather.tv,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesome.send_o,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (i){
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Foundation.home),
              label: "Feed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.search),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.plus_square),
              label: "Upload"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.heart),
              label: "Likes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Feather.user),
              label: "Account"
          ),
        ],
      ),
    );
  }
}