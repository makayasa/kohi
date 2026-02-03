import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    super.key,
    required this.imageUrl,
    required this.label,
  });
  final String imageUrl;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(left: 10),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: .circular(10),
        // border: Border.all(
        //   color: ,
        // ),
      ),
      child: Row(
        children: [
          Flexible(
            child: Center(
              // child: DefText(
              //   label,
              //   fontWeight: FontWeight.bold,
              //   color: kPrimaryColor,
              //   lineHeight: 1.2,
              // ).extraLarge,
              child: Text('data'),
            ),
          ),
          Expanded(
            flex: 3,
            child: ClipPath(
              // clipper: MyClipper(),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
