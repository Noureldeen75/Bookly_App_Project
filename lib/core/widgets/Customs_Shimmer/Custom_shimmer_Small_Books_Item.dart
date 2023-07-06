import 'package:bookly/core/Utils/ColorsClass.dart';
import 'package:flutter/material.dart';

class CustomShimmerSmallBooksItem extends StatelessWidget {
  const CustomShimmerSmallBooksItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AspectRatio(
          aspectRatio: 1.45 / 2,
          child: Container(
            decoration: BoxDecoration(
              color: ColorsClass.kShimmerBaseColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.grey),
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: Container(color: Colors.grey),
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(color: Colors.grey),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
