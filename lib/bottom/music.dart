import 'package:flutter/material.dart';

class TampilanMusic extends StatelessWidget {
  const TampilanMusic({Key? key}) : super(key: key);

  static const showGrid = true; // Set to false to show ListView

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Daftar Music'),
        ),
        body: Center(child: _buildList()),
      ),
    );
  }

  // #docregion list
  Widget _buildList() {
    return ListView(
      children: [
        _tile('CineArts at the Empire', '85 W Portal Ave',
            Icons.music_note_outlined),
        _tile('The Castro Theater', '429 Castro St', Icons.music_note_outlined),
        _tile('Alamo Drafthouse Cinema', '2550 Mission St',
            Icons.music_note_outlined),
        _tile('Roxie Theater', '3117 16th St', Icons.music_note_outlined),
        _tile('United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.music_note_outlined),
        _tile('AMC Metreon 16', '135 4th St #3000', Icons.music_note_outlined),
      ],
    );
  }

  ListTile _tile(String title, String subtitle, IconData icon) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          )),
      subtitle: Text(subtitle),
      leading: Icon(
        icon,
        color: Colors.blue[500],
      ),
    );
  }
  // #enddocregion list
}
