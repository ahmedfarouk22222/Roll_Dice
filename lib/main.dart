import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_text.dart';

void main() {
  runApp(DevicePreview(
    enabled: true,
    builder: (context) => const DiceApp(), // Wrap your app
  ));
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomText(),
      ),
    );
  }
}


