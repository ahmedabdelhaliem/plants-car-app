import 'package:flutter/material.dart';
import 'package:plants/feature/collection/widget/collection_view_body.dart';
import 'package:plants/feature/collection/widget/custom_container.dart';

class ListViewCustomPaint extends StatelessWidget {
  const ListViewCustomPaint({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .8, // تحديد ارتفاع مناسب
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomContainer(),
          );
        },
      ),
    );
  }
}
