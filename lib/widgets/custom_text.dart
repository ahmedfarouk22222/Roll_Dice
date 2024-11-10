import 'dart:math';

import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    super.key,
  });

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  var activeImage = 'lib/assets/dice-1.png';
  final random=Random();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.blue, Colors.red]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(activeImage),
            width: double.infinity,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.change_circle),
            onPressed: () {
              setState(() {});
              int diceroll = random.nextInt(6) + 1;
              activeImage = 'lib/assets/dice-$diceroll.png';
            },
            label: const Text(
              'Click',
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
