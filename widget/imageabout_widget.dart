import 'package:flutter/material.dart';

class AboutImage extends StatelessWidget {
  const AboutImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: 4,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        final List<String> imagePaths = [
          'images/dvd.png',
          'images/rnold.png',
          'images/micoh.png',
          'images/karel.png',
        ];

        return Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              imagePaths[index], // Use the image path from the list
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}