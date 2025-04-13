// lib/utils/mini_player.dart
import 'package:flutter/material.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        children: [
          // Album Art
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(4),
          //   child: Image.network(
          //     'https://via.placeholder.com/50',
          //     width: 50,
          //     height: 50,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Container(width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10)
            )),
          const SizedBox(width: 14),

          // Song Info
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jhalleya', style: TextStyle(color: Color.fromARGB(255, 34, 34, 34), fontWeight: FontWeight.bold)),
                Text('Marjaan', style: TextStyle(color: Color.fromARGB(255, 122, 122, 122))),
              ],
            ),
          ),

          // Favorite Icon
          

          // Play Icon
          const Icon(Icons.play_arrow, color: Color.fromARGB(255, 34, 34, 34)),
        ],
      ),
    );
  }
}
