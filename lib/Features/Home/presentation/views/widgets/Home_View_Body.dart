import 'package:bookly/Features/Home/presentation/views/widgets/NewestBooks_List.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/Custom_Home_Appbar.dart';
import 'package:bookly/Features/Home/presentation/views/widgets/FeaturedBooks_ListView.dart';
import 'package:bookly/core/Utils/Styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomHomeAppbar(),
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: const [
                  FeaturedBooksListView(),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Text(
                          'Newest Books',
                          style: Styles.textStyle20,
                        )),
                  ),
                ],
              ),
            ),
            const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                sliver: NewestBooksList()),
          ]),
        ),
      ],
    );
  }
}
