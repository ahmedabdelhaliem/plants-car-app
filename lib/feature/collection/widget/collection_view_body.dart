import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/core/utils/app_router.dart';
import 'package:plants/feature/collection/widget/list_view_custom_paint.dart';
import 'package:plants/feature/home/widget/custom_painter_home.dart';

class CollectionViewBody extends StatelessWidget {
  const CollectionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return
        // المحتوى القابل للتمرير
        Stack(
      children: [
        Positioned(
          right: 0,
          bottom: -60,
          child: Stack(
            children: [
              CustomPaint(
                size: const Size(300, 400),
                painter: PPSCustomPainter(),
              ),
              Positioned(
                bottom: 95,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_left,
                      color: Colors.black, size: 30),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          bottom: 10,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomPaint(
                size: const Size(300, 400),
                painter: LPSCustomPainter(),
              ),
              Positioned(
                left: 0,
                bottom: 20,
                child: IconButton(
                  icon: const Icon(Icons.keyboard_arrow_right,
                      color: Colors.black, size: 30),
                  onPressed: () {
                    GoRouter.of(context).push(AppRouter.kCollectionView);
                  },
                ),
              ),
            ],
          ),
        ),
        const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: ListViewCustomPaint(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
