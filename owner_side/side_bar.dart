import 'package:flutter/material.dart';

void main() => runApp(Sidebar());

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sidebar Example'),
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
      body: const Center(
        child: Text('Main Content'),
      ),
    );
  }
}
