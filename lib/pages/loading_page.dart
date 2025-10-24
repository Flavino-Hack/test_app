import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:test_app/pages/onboarding_page.dart';

class MyLoadingPage extends StatefulWidget {
  const MyLoadingPage({super.key, required this.title});
  final String title;

  @override
  State<MyLoadingPage> createState() => _MyLoadingPageState();
}

class _MyLoadingPageState extends State<MyLoadingPage> {
  @override
  void initState() {
    super.initState();
    loadingAnimation();
  }

  Future<Timer> loadingAnimation() async {
    return Timer(const Duration(seconds: 3), onLoaded);
  }

  onLoaded() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => OnboardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Lottie.asset('assets/lotties/netflix.json', repeat: false),
      ),
    );
  }
}
