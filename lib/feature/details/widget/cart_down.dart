import 'package:flutter/material.dart';

class CartDown extends StatelessWidget {
  const CartDown({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 120,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xffffffff),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 20,
                child: Center(
                    // لإجبار المحتوى على التمركز
                    child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                )),
              ),
              Center(
                child: Text(
                  '10\nproduct',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
