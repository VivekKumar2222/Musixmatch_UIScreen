import 'package:flutter/material.dart';

class MusicListTile extends StatelessWidget {
  final String music_name;

  const MusicListTile({
    super.key,
    required this.music_name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        bottom: 20,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.apps,),
            color: Colors.black.withOpacity(0.2),
            
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$music_name - Auj",
                  style: TextStyle(fontSize: 20),
                  overflow: TextOverflow.ellipsis, // Prevent overflow
                ),
                Text(
                  "Auj",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color.fromARGB(255, 105, 105, 105),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
    );
  }
}
