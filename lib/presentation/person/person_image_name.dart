import 'package:flutter/material.dart';

class PersonImageWithName extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isFromAssets;

  const PersonImageWithName(
      {required this.imageUrl,
      required this.name,
      required this.isFromAssets,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10),
            ),
            image: DecorationImage(
              image: getImage(imageUrl, isFromAssets),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Colors.white54,
          ),
          child: Text(
            name,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ],
    );
  }
}

ImageProvider<Object> getImage(String imageUrl, bool isFromAssets) {
  return isFromAssets
      ? AssetImage(imageUrl)
      : NetworkImage(imageUrl) as ImageProvider;
}
