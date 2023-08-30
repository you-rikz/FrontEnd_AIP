import 'package:flutter/material.dart';
import 'package:front_end_apt_iba_pa/pages/view_prop.dart';

import '../widget/card_homepage_widget.dart';
import '../widget/images_homepage_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE8EDFB),
        title: Row(
          children: [
            Center(
              child: Transform.translate(
                  offset: const Offset(-20, 0),
                  child: Image.asset(
                    'images/single_logo.png',
                  )),
            )
          ],
        ),
      ),
      drawer: SafeArea(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: Drawer(
            backgroundColor: Color(0xffE8EDFB),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'images/full_logo.png', // Replace with your logo asset path
                    width: 150,
                    height: 50,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 40),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          'images/arnuld.jpg',
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'LIM, ARNOLD',
                        style: TextStyle(
                          fontFamily: "montserrat",
                          fontWeight: FontWeight.bold,
                          color: Color(0xff232A3D),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  height: 30,
                  thickness: 1.5,
                ),

                // Add more ListTile items as needed
                //HOME
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                  ),
                  child: ListTile(
                    // tileColor: Color(0xff232A3D),
                    leading: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff232A3D),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // Customize your background color
                      child: const Center(
                        child: Icon(
                          Icons.home,
                          color: Color(0xffE8EDFB),
                        ),
                      ),
                    ),

                    title: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Add your onTap action here
                    },
                  ),
                ),
                //Accommodation
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 25,
                  ),
                  child: ListTile(
                    // tileColor: Color(0xff232A3D),
                    leading: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff232A3D),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // Customize your background color
                      child: const Center(
                        child: Image(
                          image: AssetImage('images/building.png'),
                          width: 23,
                          height: 23,
                        ),
                      ),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'Accommodation',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Add your onTap action here
                    },
                  ),
                ),
                //ABOUT US
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 25,
                  ),
                  child: ListTile(
                    // tileColor: Color(0xff232A3D),
                    leading: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xff232A3D),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      // Customize your background color
                      child: const Center(
                        child: Image(
                          image: AssetImage('images/about_us.png'),
                          width: 23,
                          height: 23,
                        ),
                      ),
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                      ),
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    onTap: () {
                      // Add your onTap action here
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50,
                  ),
                  child: ListTile(
                    title: MaterialButton(
                      onPressed: () {},
                      color: Color(0xff232A3D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      minWidth: 172,
                      height: 34,
                      child: Text(
                        'Apply My Property',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: MaterialButton(
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    minWidth: 172,
                    height: 34,
                    child: Text(
                      'Logout',
                      style: TextStyle(
                          color: Color(0xff232A3D),
                          fontFamily: 'montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        //Cover
        child: Column(
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      const Color(0xff232A3D).withOpacity(0.4),
                      BlendMode.srcATop,
                    ),
                    child: Image.asset(
                      'images/header2.png',
                    ),
                  ),
                ),
                Positioned(
                  left: 5.0,
                  top: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Column(
                      children: [
                        Text(
                          'Your Second Home Search \nMade Easy',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontSize: 25.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 45),
                          child: Text(
                            'Don’t spend hours online searching for \napartments/dorms, with Apt. Iba Pa \nyou’ll find your new home in no time',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 15.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Image.asset(
                  'images/wavelong.png',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Container(
                              width: 360,
                              height: 220,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    spreadRadius: 1,
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              //3 Baranggay
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                    const Color(0xff232A3D).withOpacity(
                                        0.5), // Adjust opacity here (0.5 = 50%)
                                    BlendMode
                                        .darken, // You can adjust the blend mode if needed
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Image.asset(
                                      'images/claro.png',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 25,
                              top: 145,
                              child: Text(
                                'Dormitories and Apartments\n in Brgy. Claro M. Recto',
                                style: TextStyle(
                                    fontFamily: 'montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 360,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  const Color(0xff232A3D).withOpacity(
                                      0.5), // Adjust opacity here (0.5 = 50%)
                                  BlendMode
                                      .darken, // You can adjust the blend mode if needed
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/salapungan.png',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 25,
                            top: 145,
                            child: Text(
                              'Dormitories and Apartments\n in Brgy. Salapungan',
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: 360,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 0),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  const Color(0xff232A3D).withOpacity(
                                      0.5), // Adjust opacity here (0.5 = 50%)
                                  BlendMode
                                      .darken, // You can adjust the blend mode if needed
                                ),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(
                                    'images/lourdes.jpg',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            left: 25,
                            top: 145,
                            child: Text(
                              'Dormitories and Apartments\n in Brgy. Lourdes Sur East',
                              style: TextStyle(
                                  fontFamily: 'montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //featured apartments boxes
            Column(
              children: [
                const Text(
                  'Featured Apartments',
                  style: TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            0.4), // Adjust opacity as needed
                                        BlendMode
                                            .srcATop, // You can experiment with different blend modes
                                      ),
                                      child: Image.asset(
                                        'images/salapungan.png',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 6,
                                    left: 9.5,
                                    child: Text(
                                      "Burj's Dormitory ",
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(1,
                                                2), // Adjust the X and Y offsets for desired shadow position
                                            blurRadius:
                                                4, // Adjust the blur radius for the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.5,
                                    top: 22.5,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.3), // Shadow color
                                                spreadRadius:
                                                    1, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: const Offset(0,
                                                    3), // Offset in the X and Y directions
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            'images/pinwhite.png',
                                            width: 8.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          'Brgy. Salapungan',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    1), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    5, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 80,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'PHP 2,500',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 13,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Image.asset(
                                          'images/revstar.png',
                                          width: 13,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff232A3D),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            6), // Adjust the radius as needed
                                      ),
                                    ),
                                    child: const Text(
                                      'View Property',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            0.4), // Adjust opacity as needed
                                        BlendMode
                                            .srcATop, // You can experiment with different blend modes
                                      ),
                                      child: Image.asset(
                                        'images/lourdes.jpg',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 6,
                                    left: 9.5,
                                    child: Text(
                                      "Tito's Dormitory ",
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(1,
                                                2), // Adjust the X and Y offsets for desired shadow position
                                            blurRadius:
                                                4, // Adjust the blur radius for the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.5,
                                    top: 22.5,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.3), // Shadow color
                                                spreadRadius:
                                                    1, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: const Offset(0,
                                                    3), // Offset in the X and Y directions
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            'images/pinwhite.png',
                                            width: 8.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          'Brgy. Lourdes Sur East',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    1), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    5, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 80,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'PHP 2,500',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 13,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Image.asset(
                                          'images/revstar.png',
                                          width: 13,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff232A3D),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            6), // Adjust the radius as needed
                                      ),
                                    ),
                                    child: const Text(
                                      'View Property',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            0.4), // Adjust opacity as needed
                                        BlendMode
                                            .srcATop, // You can experiment with different blend modes
                                      ),
                                      child: Image.asset(
                                        'images/claro.png',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 6,
                                    left: 9.5,
                                    child: Text(
                                      "Tita's Dormitory ",
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(1,
                                                2), // Adjust the X and Y offsets for desired shadow position
                                            blurRadius:
                                                4, // Adjust the blur radius for the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.5,
                                    top: 22.5,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.3), // Shadow color
                                                spreadRadius:
                                                    1, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: const Offset(0,
                                                    3), // Offset in the X and Y directions
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            'images/pinwhite.png',
                                            width: 8.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          'Brgy. Claro M. Recto',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    1), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    5, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 80,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'PHP 2,500',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 13,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Image.asset(
                                          'images/revstar.png',
                                          width: 13,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff232A3D),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            6), // Adjust the radius as needed
                                      ),
                                    ),
                                    child: const Text(
                                      'View Property',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 175,
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: Offset(0, 1),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: ColorFiltered(
                                      colorFilter: ColorFilter.mode(
                                        Colors.black.withOpacity(
                                            0.4), // Adjust opacity as needed
                                        BlendMode
                                            .srcATop, // You can experiment with different blend modes
                                      ),
                                      child: Image.asset(
                                        'images/claro.png',
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 6,
                                    left: 9.5,
                                    child: Text(
                                      "Burj's Dormitory ",
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        shadows: [
                                          Shadow(
                                            color: Colors.black,
                                            offset: Offset(1,
                                                2), // Adjust the X and Y offsets for desired shadow position
                                            blurRadius:
                                                4, // Adjust the blur radius for the shadow
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 9.5,
                                    top: 22.5,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                    0.3), // Shadow color
                                                spreadRadius:
                                                    1, // Spread radius
                                                blurRadius: 5, // Blur radius
                                                offset: const Offset(0,
                                                    3), // Offset in the X and Y directions
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(
                                            'images/pinwhite.png',
                                            width: 8.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        const Text(
                                          'Brgy. Salapungan',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    1), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    5, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 10,
                                    top: 80,
                                    child: Row(
                                      children: [
                                        const Text(
                                          'PHP 2,500',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 13,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Image.asset(
                                          'images/revstar.png',
                                          width: 13,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            fontFamily: 'montserrat',
                                            color: Colors.white,
                                            fontSize: 11,
                                            shadows: [
                                              Shadow(
                                                color: Colors.black,
                                                offset: Offset(1,
                                                    2), // Adjust the X and Y offsets for desired shadow position
                                                blurRadius:
                                                    4, // Adjust the blur radius for the shadow
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 160,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xff232A3D),
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            6), // Adjust the radius as needed
                                      ),
                                    ),
                                    child: const Text(
                                      'View Property',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Image.asset('images/waveline.png'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Your search just got easier',
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Column(
                children: [
                  Image.asset('images/searchyourhome.png'),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Search for your home',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset('images/livetoit.png'),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Live to it',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset('images/leaverev.png'),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                      'Leave Reviews',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            Image.asset('images/waveline.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'What Apt Iba Pa Offers',
              style: TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align the rows at the center
              children: [
                _buildElevatedContainer(
                  text: 'Online Catalog for Students',
                  desc:
                      'Choose from different spaces, \nreserve, and schedule your \nsecond home with one click \nof a button',
                  imagePath: 'images/touch.png',
                ),
                const SizedBox(width: 20), // Add spacing between containers
                _buildElevatedContainer(
                  text: 'Customer Support',
                  imagePath: 'images/handshake.png', 
                  desc:
                      "You can ask for help from the \nteam, anytime. Just send us a \nmessage and we’ll get back \nto you immediately.",
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align the rows at the center
              children: [
                _buildElevatedContainer(
                    text: 'A space to call home',
                    imagePath:'images/home.png',
                    desc:
                        "We make sure our rooms are \nnot just a space for you but a \nplace you can call home, \nsomewhere you can work \nand relax at the same time."),
                const SizedBox(width: 20), // Add spacing between containers
                _buildElevatedContainer(
                    text: 'Built-in Comfort',
                    imagePath:'images/smiley.png',
                    desc:
                        "Our homes are functional \nspaces with built-in amenities \nthat cater to your basic needs \nand create the comfort that \nyou desire."),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Align the rows at the center
              children: [
                _buildElevatedContainer(
                    text: 'Well-secured Spaces',
                    imagePath:'images/orientation.png',
                    desc:
                        "Our homes come with CCTV, \ncaretakers, and security \npersonnel you can rely on for \nyour safety."),
                const SizedBox(width: 20), // Add spacing between containers
                _buildElevatedContainer(
                    text: 'Regular Maintenance',
                    imagePath:'images/wrench.png',
                    desc:
                        "Choose from different spaces, \nreserve, and schedule your \nsecond home with one click \nof a button"),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 25, child: Image.asset('images/credit.png')),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "2023 Apt. Iba Pa",
                  style: TextStyle(
                      fontFamily: 'montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildElevatedContainer({
  required String text,
  required String desc,
  String? imagePath,
}) {
  return Material(
    elevation: 2,
    borderRadius: BorderRadius.circular(15),
    shadowColor: Colors.black,
    child: Container(
      width: 175,
      height: 165,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Stack(
        children: [
          if (imagePath != null)
            Positioned(
              top: 5, // Adjust the top padding as needed
              left: 0,
              right: 0,
              child: Image.asset(
                imagePath,
                height: 80,
                width: 80,
              ),
            ),

          // Align the text to the bottom center
          // child:
          Padding(
            padding: const EdgeInsets.only(
              top: 80,
            ),
            child: Column(
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 10,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ),
                Center(
                  child: Text(
                    desc,
                    style:
                        const TextStyle(fontSize: 9, fontFamily: 'montserrat'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
