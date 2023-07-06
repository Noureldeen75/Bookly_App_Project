import 'package:bookly/core/Utils/ColorsClass.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_Book_Item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerFeaturedBooks extends StatelessWidget {
  const CustomShimmerFeaturedBooks({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 100.0,
        child: Shimmer.fromColors(
            baseColor: ColorsClass.kShimmerBaseColor,
            highlightColor: ColorsClass.kShimmerHighLightColor,
            child: const CustomShimmerBookItem()),
      ),
    );
  }
}
