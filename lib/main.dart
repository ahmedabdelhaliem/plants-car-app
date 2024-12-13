import 'package:flutter/material.dart';
import 'package:plants/core/utils/app_router.dart';

void main() {
  runApp(const Plants());
}

class Plants extends StatelessWidget {
  const Plants({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
