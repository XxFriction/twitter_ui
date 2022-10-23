
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class animation extends StatefulWidget {
  const animation({Key? key}) : super(key: key);

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoadingBouncingGrid.square(
        backgroundColor: Colors.white,
        size: 15,
      ),
    );
  }
}
