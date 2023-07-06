import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_SimilarBooks.dart';
import 'package:flutter/material.dart';

class CustomShimmerSimilarBooksList extends StatelessWidget {
  const CustomShimmerSimilarBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomShimmerSimilarBooks(),
        separatorBuilder: (context, index) => const SizedBox(
          width: 8.0,
        ),
        itemCount: 5,
      ),
    );
  }
}