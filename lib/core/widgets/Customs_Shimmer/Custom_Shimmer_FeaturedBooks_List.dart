import 'package:bookly/core/widgets/Customs_Shimmer/Custom_Shimmer_FeaturedBox.dart';
import 'package:flutter/material.dart';

class CustomShimmerFeaturedBooksList extends StatelessWidget {
  const CustomShimmerFeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsetsDirectional.only(
                start: 20.0, top: 25, bottom: 10.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.28,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const CustomShimmerFeaturedBooks(),
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10.0,
                ),
                itemCount: 5,
              ),
            ),
          );
  }
}