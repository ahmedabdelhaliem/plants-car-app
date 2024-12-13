import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:plants/constants.dart';
import 'package:plants/core/assets/assets.dart';
import 'package:plants/core/utils/app_router.dart';
import 'package:plants/feature/home/widget/custom_botton.dart';
import 'package:plants/feature/home/widget/custom_painter_home.dart';
import 'package:plants/feature/home/widget/min_add.dart';
import 'package:plants/feature/home/widget/title_text.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyGreen,
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            Positioned(
              left: -13,
              bottom: 44,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(400, 600),
                    painter: RPSCustomPainter(),
                  ),
                  const Positioned(
                    left: 180,
                    bottom: 50,
                    child: Text(
                      'x2',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            // الحاوية كخلفية
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * .8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(180),
                  ),
                ),
              ),
            ),
            const Positioned(bottom: 250, right: 110, child: TitleText()),

            Positioned(
              top: 360,
              right: 0,
              child: CustomPaint(
                size: const Size(350, 400),
                painter: PPSCustomPainter(),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(350, 400),
                    painter: LPSCustomPainter(),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 20,
                    child: IconButton(
                      icon: const Icon(Icons.person,
                          color: Colors.black, size: 40),
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.kCollectionView);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 30,
              bottom: 0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(300, 600),
                    painter: BPSCustomPainter(),
                  ),
                  Positioned(
                    left: 125,
                    bottom: 0,
                    child: IconButton(
                      icon:
                          const Icon(Icons.lock, color: Colors.black, size: 25),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(bottom: 40, left: 22, child: MinAdd()),
            Positioned(
              bottom: 70,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.home, color: Colors.black, size: 40),
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kProfileView);
                  print('sddddddddddddddddddddddddddddddddddddddd');
                },
              ),
            ),
            const Positioned(
              left: 20,
              top: 240,
              child: CustomButtonGroup(
                buttons: [' M', 'L', 'XL'], // الأزرار مع النصوص
              ),
            ),
            Positioned(
              top: 110,
              child: SizedBox(
                height: 250,
                width: 250,
                child: Image.asset(
                  Assets.plants,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
