import 'package:flutter/material.dart';
import 'package:musicmix/utils/current_played_tile.dart';
import 'package:musicmix/utils/music_list_tile.dart';
import 'package:musicmix/utils/shuffle_tile.dart';
import 'package:musicmix/utils/mini_player.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 120), // extra space for mini player + nav bar
        child: Column(
          children: [
            CurrentPlayedTile(),
            ShuffleTile(),
            const SizedBox(height: 18),
            MusicListTile(music_name: "Ansu"),
            MusicListTile(music_name: "Raat"),
            MusicListTile(music_name: "Angraiziyan"),
            MusicListTile(music_name: "Keh Dena"),
            MusicListTile(music_name: "O Jaana"),
          ],
        ),
      ),

      // 👇 Combine MiniPlayer and BottomNavigationBar using a Column
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const MiniPlayer(),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 1,
            selectedItemColor: const Color.fromARGB(255, 27, 27, 27),
            items:  [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
              BottomNavigationBarItem(
                icon: Transform.rotate(
                  angle: 0.785398,
                  child: Icon(Icons.grid_view),
                ),
                label: "Controller",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.radio_button_checked), label: "Identify"),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            ],
          ),
        ],
      ),
    );
  }
}
