import 'package:bookly/core/Utils/ColorsClass.dart';
import 'package:bookly/core/widgets/Customs_Shimmer/Custom_shimmer_Small_Books_Item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomShimmerSmallBooks extends StatelessWidget {
  const CustomShimmerSmallBooks({
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
            child: const CustomShimmerSmallBooksItem()),
      ),
    );
  }
}
