import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.imagesList,
  });

  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
        height: 200.0,
      ),
      itemCount: imagesList.length,
      itemBuilder: (context, index, realIndex) => Builder(
        builder: (BuildContext context) {
          return customImageContiner(index);
        },
      ),
    );
  }

  ClipRRect customImageContiner(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Image.asset(
        imagesList[index],
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
