import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final Function(bool) didTapButton;
  const LikeButton(this.didTapButton, {super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          setState(() {
            isLiked = !isLiked;

            widget.didTapButton(isLiked);
          });
        },
        iconSize: 60,
        icon: Icon(isLiked ? Icons.thumb_up_alt : Icons.thumb_up_off_alt));
  }
}
