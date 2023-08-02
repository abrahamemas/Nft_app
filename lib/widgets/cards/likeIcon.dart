import 'package:flutter/material.dart';

class LikeHeartIcon extends StatefulWidget {
  @override
  State<LikeHeartIcon> createState() => _LikeHeartIconState();
}

class _LikeHeartIconState extends State<LikeHeartIcon> {
  bool isLiked = false;

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleLike,
      child: Icon(
          Icons.favorite,
          color:isLiked ? Colors.red : Color.fromARGB(129, 49, 59, 69),
          size: 28.0,
        ),
    );
  }
}

// Usage:
// LikeHeartIcon(),
