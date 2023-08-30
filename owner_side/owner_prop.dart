import 'package:flutter/material.dart';

class OwnerProperty extends StatelessWidget {
  const OwnerProperty({super.key});

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
                  padding: EdgeInsets.only(top: 20),
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
                          'images/single_logo.png',
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
        child: Center(
          child: MyPropertiesWidget(),
        ),
      ),
    );
  }
}

class MyPropertiesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 0.0, top: 50),
          child: Text(
            'My Properties',
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: 'montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
            height: 50.0), // Add some space between the text and the container
        Column(
          children: [
            Container(
              width: 350,
              height: 360,
              decoration: BoxDecoration(
                color: const Color(0xffFBFDFF),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(
                        0, 4), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ),
                    child: Text(
                      'Owner Dormitory',
                      style: TextStyle(
                        color: Color(0xff232A3D),
                        fontSize: 18.0,
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/pinloc.png',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Brgy. Salapungan',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      'images/roomdorm.png',
                      width: 310,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Rent starts at',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'montserrat',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'PHP 2,500',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '4.8 (73 reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'montserrat',
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: FilledButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(0, 30),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(310, 0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff232A3D),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Property',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 13,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //2nd box
            Container(
              width: 350,
              height: 360,
              decoration: BoxDecoration(
                color: const Color(0xffFBFDFF),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(
                        0, 4), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ),
                    child: Text(
                      'Owner Dormitory',
                      style: TextStyle(
                        color: Color(0xff232A3D),
                        fontSize: 18.0,
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/pinloc.png',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Brgy. Salapungan',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      'images/roomdorm.png',
                      width: 310,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Rent starts at',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'montserrat',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'PHP 2,500',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '4.8 (73 reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'montserrat',
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: FilledButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(0, 30),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(310, 0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff232A3D),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Property',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            //2nd box
            Container(
              width: 350,
              height: 360,
              decoration: BoxDecoration(
                color: const Color(0xffFBFDFF),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(
                        0, 4), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 20,
                    ),
                    child: Text(
                      'Owner Dormitory',
                      style: TextStyle(
                        color: Color(0xff232A3D),
                        fontSize: 18.0,
                        fontFamily: 'montserrat',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/pinloc.png',
                          height: 15,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Brgy. Salapungan',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Image.asset(
                      'images/roomdorm.png',
                      width: 310,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Rent starts at',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'montserrat',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 25,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'PHP 2,500',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 95,
                        ),
                        Text(
                          '4.8 (73 reviews)',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'montserrat',
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: FilledButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                          Size(0, 30),
                        ),
                        fixedSize: MaterialStateProperty.all(
                          Size(310, 0),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xff232A3D),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Edit Property',
                        style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 13,
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
    );
  }
}
