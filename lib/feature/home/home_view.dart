import 'package:flutter/material.dart';
import 'package:plants/constants.dart';
import 'package:plants/feature/home/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
      backgroundColor: kMyGreen,
    );
  }
}
