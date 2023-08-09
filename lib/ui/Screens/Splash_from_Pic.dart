import 'dart:async';

import 'package:flutter/material.dart';

import 'splash_screen.dart';

class Splashfrompic extends StatefulWidget {
  const Splashfrompic({Key? key}) : super(key: key);

  @override
  State<Splashfrompic> createState() => _SplashfrompicState();
}

class _SplashfrompicState extends State<Splashfrompic> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF762A39),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/splash.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
