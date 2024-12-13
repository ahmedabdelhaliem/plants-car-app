import 'package:flutter/material.dart';
import 'package:plants/feature/details/widget/cart_up.dart';

class CustomRowDetails extends StatelessWidget {
  const CustomRowDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // الحفاظ على الحد الأدنى من الحجم
              children: [
                const Text(
                  "premuim♛",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffC1FA9A)),
                ),
                const Text(
                  "Pitaya",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  "EXOTIC fruits",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // خلفية شفافة
                    shadowColor: Colors.transparent, // إزالة الظل
                    foregroundColor: Colors.black, // لون النص
                    side: const BorderSide(
                      color: Color(0xffC1FA9A), // لون الإطار
                      width: 2, // سمك الإطار
                    ),
                    minimumSize: const Size(150, 50), // العرض والطول
                  ),
                  child: const Text(
                    "Nutrition",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 250,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffC1FA9A)),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "SELECT\n QUANTITY",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const CartUp(),
      ],
    );
  }
}
