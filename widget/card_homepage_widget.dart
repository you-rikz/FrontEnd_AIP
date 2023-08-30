import 'package:flutter/material.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({Key? key}) : super(key: key);

  Widget _buildCard(String title, String description, String imageUrl) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1, // Set the desired aspect ratio for square cards
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(imageUrl),
              const SizedBox(height: 16),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 9,
                  fontFamily: 'Montserrat',
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 8,
                  fontFamily: 'Montserrat',
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildCard(
              'Online Catalog for Students',
              'Choose from different spaces, reserve, and schedule your second home with one click of a button',
              'images/touch_small.png',
            ),
            _buildCard(
              'Customer Support',
              'You can ask for help from the team, anytime. Just send us a message and we’ll get back to you immediately.',
              'images/handshake.png',
            ),
          ],
        ),
        Row(
          children: [
            _buildCard(
              'A space to call home',
              'We make sure our rooms are not just a space for you but a place you can call home, somewhere you can work and relax at the same time.',
              'images/home.png',
            ),
            _buildCard(
              'Built-in Comfort',
              'Our homes are functional spaces with built-in amenities that cater to your basic needs and create the comfort that you desire.',
              'images/smiley-o.png',
            ),
          ],
        ),
        Row(
          children: [
            _buildCard(
              'Well-secured Spaces',
              'Our homes come with CCTV, caretakers, and security personnel you can rely on for your safety.',
              'images/orientation.png',
            ),
            _buildCard(
              'Regular Maintenance',
              'Choose from different spaces, reserve, and schedule your second home with one click of a button',
              'images/wrench.png',
            ),
          ],
        ),
      ],
    );
  }
}