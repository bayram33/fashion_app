import "package:animated_splash_screen/animated_splash_screen.dart";
import "package:app/home.dart";
import "package:flutter/material.dart";
import "package:lottie/lottie.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Expanded(
          child: LottieBuilder.asset("assets/splashAnimation.json"),
        ),
      ),
      nextScreen: const HomePage(),
      splashIconSize: 250,
    );
  }
}
