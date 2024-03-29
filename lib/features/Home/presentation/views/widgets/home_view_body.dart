import 'package:book_store/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'Featured_book_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        FeaturedBooksViewList(),
      ],
    );
  }
}

class FeaturedBooksViewList extends StatelessWidget {
  const FeaturedBooksViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: FeaturedBooksViewItem(),
            );
          }),
    );
  }
}
