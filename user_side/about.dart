import 'package:flutter/material.dart';
import 'package:front_end_apt_iba_pa/widget/imageabout_widget.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Center(
              child: Transform.translate(
                offset: const Offset(-20, 0),
                child: Image.asset('images/single_logo.png'),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Implement your search functionality here
            },
          ),
        ],
      ),
      drawer: const SafeArea(
        child: Drawer(
          child: Column(),
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'At APT. Iba Pa, our goal is to make it easier for people to find and review dormitories and apartments near Angeles University Foundation (AUF). We understand the challenges faced by students when searching for suitable accommodation in the vicinity of their educational institutions. That\'s why we have developed a user-friendly map-based directory and review system to simplify and enhance the experience of finding the perfect place to call home. \n\nOur platform serves as a comprehensive guide, providing a vast database of dormitories and apartments in the area surrounding AUF. Through our interactive map interface, users can easily navigate and explore different locations, allowing them to make informed decisions based on their preferences and requirements. \n\nWhat makes us different is that we focus on reviews from the community. We believe in the power of authentic experiences and firsthand knowledge shared by fellow residents. With our review system, users can access valuable insights and opinions from others who have lived or currently reside in the listed properties. This feature helps create a transparent and trustworthy platform, enabling users to make confident choices that align with their needs.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FourCardsLayout(),
              SizedBox(
                height: 30,
              ),
              Text(
                'Meet the people behind Apt. Iba Pa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Behind the innovative Apt Iba Pa is a passionate team dedicated to transforming the way individuals search for and review dormitories and apartments near Angeles University Foundation (AUF). We are a group who understand the challenges and importance of finding the perfect accommodation.\n\nWe are committed to transparency, reliability, and fostering a strong sense of community. Our goal is to empower users to make informed decisions by providing a platform that showcases authentic experiences and facilitates meaningful interactions.\n\nWelcome to ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Apt Iba Pa ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          '- where technology meets community to redefine your search for dormitories and apartments near Angeles University Foundation.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 30,
              ),
              AboutImage(),
              SizedBox(
                height: 40,
              ),
              Text(
                'Connecting Communities',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'In our journey to create a reliable and trustworthy resource for individuals seeking accommodation, we have spent time meeting and collaborating with the landowners and property managers who have opened their doors to us. These interactions have allowed us to build a strong foundation of trust and understanding, enabling us to provide accurate and up-to-date information about the dormitories and apartments listed on our platform.\n\nWe value the relationships we have cultivated with these landowners. These photos represent the collaborative spirit and mutual commitment we share with the landowners to create a thriving community-driven platform.\n\nWith ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'Apt Iba Pa',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ', you can trust that you are not just browsing through a faceless website. Instead, you are connecting with a community of like-minded individuals who are dedicated to helping you find the perfect place to call home.',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 20,
              ),
              //IMAGES HERE
            ],
          ),
        ),
      ),
    );
  }
}

class FourCardsLayout extends StatelessWidget {
  const FourCardsLayout({Key? key}) : super(key: key);

  Widget _buildCard(String title, String description, String imageUrl) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: Image.asset(imageUrl),
        title: Text(
          title,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            fontFamily: 'Montserrat',
          ),
        ),
        subtitle: Text(
          description,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            fontFamily: 'Montserrat',
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // First Card
        _buildCard(
            'Extensive Listings',
            'We have curated a comprehensive database of dormitories and apartments within the vicinity of AUF. Our listings include detailed information such as rental rates, facilities, nearby amenities, and contact details',
            'images/list-ul.png'),

        // Second Card
        _buildCard(
            'Community Reviews',
            'We encourage our users to share their experiences by leaving reviews and ratings for the properties they have lived in. This helps create an active community where individuals can exchange valuable insights, fostering a reliable platform.',
            'images/user-star.png'),

        // Third Card
        _buildCard(
            'Customized living',
            'Users can narrow down their options based on preferences such as rental budget, room types, amenities, and more, ensuring they find accommodations that suit their specific needs.',
            'images/thumbs-up.png'),

        // Fourth Card
        _buildCard(
            'Easy Communication',
            'Users can easily connect with the relevant contacts for inquiries, booking appointments, and securing their desired accommodations through the contact information displayed',
            'images/envelopes.png'),

        // Fifth Card
        _buildCard(
            'Map-based Directory',
            'Our map interface allows users to visualize the exact locations of dormitories and apartments in relation to AUF. This feature enables convenient searching based on proximity and accessibility.',
            'images/location.png'),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Welcome(),
  ));
}
