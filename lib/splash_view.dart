import 'package:flutter/material.dart';
import 'package:signc/splashview_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SplashViewBody(),
    );
  }
}