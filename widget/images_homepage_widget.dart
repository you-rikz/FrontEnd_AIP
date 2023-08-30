import 'package:flutter/material.dart';

class HomePageImage extends StatelessWidget {
  final String text;
  final String imagePath;

  const HomePageImage({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 21,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class YourMainWidget extends StatelessWidget {
  const YourMainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomePageImage(
          text: 'Your search just got easier',
          imagePath: 'images/home_page_dog.png',
        ),
        SizedBox(
          height: 10,
        ),
        HomePageImage(
          text: 'Search for your home',
          imagePath: 'images/home_page_dog.png',
        ),
        HomePageImage(
          text: 'Live to it',
          imagePath: 'images/home_page_dog.png',
        ),
        HomePageImage(
          text: 'Leave Reviews',
          imagePath: 'images/home_page_dog.png',
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'What Apt. Iba Pa Offers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}