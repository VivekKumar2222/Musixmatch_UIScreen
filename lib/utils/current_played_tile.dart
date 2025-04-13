import 'package:flutter/material.dart';

class CurrentPlayedTile extends StatelessWidget {
  const CurrentPlayedTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Image.asset('assets/images/0x1900-000000-80-0-0.jpg',
            //   width: 80,
            //   height: 80,
            //   fit: BoxFit.cover,),
            // ),
            Container(width: 140,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12)
            )),
            SizedBox(width: 18),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PLAYLIST - 6 SONGS',
                style: TextStyle(
                  fontSize: 12,
                  letterSpacing: 1.2,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Auj',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}