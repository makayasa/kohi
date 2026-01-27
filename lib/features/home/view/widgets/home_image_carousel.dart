import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeImageCarousel extends StatelessWidget {
  HomeImageCarousel({super.key});

  final _listHeaderImages = [
    'https://firebasestorage.googleapis.com/v0/b/fx-kopi.appspot.com/o/kopi_anime_10.png?alt=media&token=a421a968-6bc9-41d1-bee2-8498111db628',
    'https://firebasestorage.googleapis.com/v0/b/fx-kopi.appspot.com/o/kopi_anime_11.png?alt=media&token=c1cdde99-3d5a-4fd2-a793-e5788356827f',
    'https://firebasestorage.googleapis.com/v0/b/fx-kopi.appspot.com/o/kopi_anime_12.png?alt=media&token=adcddb63-3fed-4ea0-be2e-6ba137cd697f',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(13),
          bottomRight: Radius.circular(13),
        ),
      ),
      child: CarouselSlider.builder(
        itemCount: _listHeaderImages.length,
        options: CarouselOptions(
          autoPlay: true,
          autoPlayCurve: Curves.easeInOutCirc,
          autoPlayAnimationDuration: Duration(milliseconds: 500),
          viewportFraction: 1,
          aspectRatio: 1 / 1,
        ),
        itemBuilder: (context, index, realIndex) {
          return ClipRRect(
            borderRadius: .vertical(bottom: .circular(13)),
            child: CachedNetworkImage(
              imageUrl: _listHeaderImages[index],
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
