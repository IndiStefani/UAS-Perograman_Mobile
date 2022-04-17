import 'package:flutter/material.dart';
import 'akun.dart';
import 'playlist.dart';
import 'music.dart';

class BottomNavi extends StatefulWidget {
  const BottomNavi({Key? key}) : super(key: key);

  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
  int currentIndex = 0;

  final List<Widget> body = [
    const TampilanMusic(),
    const TampilanPlaylist(),
    const TampilanAkun()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: ontap,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: 'Playlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Akun',
          )
        ],
      ),
    );
  }

  void ontap(index) {
    setState(() {
      currentIndex = index;
    });
  }
}
