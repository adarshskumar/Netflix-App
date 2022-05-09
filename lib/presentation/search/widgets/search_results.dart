import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/search/widgets/title.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTitle(title: 'Movies & TV'),
        kHeight,
        Expanded(
            child: GridView.count(
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              childAspectRatio: 1/1.4,
          crossAxisCount: 3,
          shrinkWrap: true,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          "https://www.themoviedb.org/t/p/w440_and_h660_face/g18jnJuhIujMYErHqeG5t8U5F9X.jpg",
        ),
      ),
      borderRadius: BorderRadius.circular(7),
      ),
    );
  }
}
