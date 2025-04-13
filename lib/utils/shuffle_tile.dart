import 'package:flutter/material.dart';

class ShuffleTile extends StatelessWidget {
  const ShuffleTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12,
        right: 12,
        top: 12,
        bottom: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12)
      
        ),
        
        
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12,
            right: 12,
            top: 12,
            bottom: 12
          ),
          
          
          
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.shuffle)),
              SizedBox(width: 118),
              Text("Shuffle",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black.withOpacity(0.7),
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(width: 130)
            ],
          ),
        ),
      ),
    );
  }
}