import 'package:flutter/material.dart';

class ViewProp extends StatefulWidget {
  const ViewProp({super.key});

  @override
  State<ViewProp> createState() => _ViewPropState();
}

class _ViewPropState extends State<ViewProp> {
  // final List<Color> colors = [
  //   Colors.red,
  //   Colors.blue,
  //   Colors.green,
  //   Colors.yellow,
  //   Colors.orange,
  //   Colors.purple,
  // ];
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<String> profileImages = [
    'images/fblogo.png',
    'images/twtlogo.png',
    'images/iglogo.png',
  ];
  List<String> profileImages2 = [
    'images/iglogo.png',
    'images/fblogo.png',
    'images/twtlogo.png',
  ];
  List<String> userNames = ['Micoh Yabut', 'Echoners', 'Lim'];
  List<String> userNames2 = ['Karylle', 'Holy', 'Nutrition'];
  List<String> reviews = [
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',

  ];
  List<String> reviews2 = [
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',
    'Lorem ipsum dolor sit amet, \nconsectetur adipisicing elit, \nsed do eiusmod tempor \nincididunt ut labore et dolore \nmagna aliqua. Ut enim ad \nminim veniam, quis nostrud \nexercitation ullamco laboris \nnisi ut aliquip ex ea commodo \nconsequat.',

  ];

  void nextPage() {
    if (_currentPage < 2) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (_currentPage > 0) {
      _pageController.animateToPage(
        _currentPage - 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  // GoogleMapController? mapController;

  // void _onMapCreated(GoogleMapController controller) {
  //   mapController = controller;
  // }

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
                ),
              ),
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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 420,
                height: 300,
                child: ClipRRect(
                  // Clip the child to match the container shape
                  child: Image.asset(
                    'images/roomdorm.png', // Replace with your image URL
                    fit: BoxFit.cover, // Scale the image to cover the container
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 125,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      // Clip the child to match the container shape
                      child: Image.asset(
                        'images/roomdorm.png', // Replace with your image URL
                        fit: BoxFit
                            .cover, // Scale the image to cover the container
                      ),
                    ),
                    // Add any child widgets you want inside this container
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Container(
                  width: 125,
                  height: 130,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),

                    // Clip the child to match the container shape
                    child: Image.asset(
                      'images/roomdorm.png', // Replace with your image URL
                      fit: BoxFit
                          .cover, // Scale the image to cover the container
                    ),
                  ),
                  // Add any child widgets you want inside this container
                ),
                const SizedBox(
                  width: 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Container(
                    width: 125,
                    height: 130,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      // Clip the child to match the container shape
                      child: Image.asset(
                        'images/roomdorm.png', // Replace with your image URL
                        fit: BoxFit
                            .cover, // Scale the image to cover the container
                      ),
                    ),
                    // Add any child widgets you want inside this container
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Burj Dormitory',
                          style: TextStyle(
                            fontSize: 22,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 36,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 3,
                          ),
                          child: Text(
                            'PHP',
                            style: TextStyle(
                              fontSize: 10,
                              fontFamily: 'montserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '2,500/Monthly',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Image(
                          width: 20,
                          image: AssetImage(
                            'images/bookmark.png',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '452 Quatro de Julio Stt. \nBrgy. Salapungan',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '4.8 (73 reviews)',
                      style: TextStyle(
                          fontFamily: 'montserrat',
                          fontSize: 13,
                          color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 1,
                color: Colors.grey, // Customize the color of the line
                margin: EdgeInsets.symmetric(horizontal: 0),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet consectetur. Suspendisse \nviverra posuere venenatis velit at. Urna consectetur purus \naliquet amet vel tincidunt tincidunt sed. In viverra sed \nnulla pellentesque. Et velit egestas volutpat integer at \nquis libero sed. Pretium elementum dictumst mauris \nfaucibus diam ac nulla. Odio non id praesent duis aliquam \nbibendum. Risus lobortis interdum ultricies commodo \nhendrerit. Quis morbi eget imperdiet felis pellentesque sit \nnulla parturient. Tempor in sit sed amet pulvinar. \nImperdiet erat vitae.',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 12.5,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '3 out of 9 room/s available',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200, // Set the desired width
                  height: 35, // Set the desired height
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff232A3D),
                      ), // Set the desired background color
                    ),
                    child: Text('Reserve a room'),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 200, // Set the desired width
                  height: 35, // Set the desired height
                  child: FilledButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xff232A3D),
                      ), // Set the desired background color
                    ),
                    child: Text('Request a visit'),
                  ),
                ),
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      top: 40,
                    ),
                    child: Text(
                      'Amenities',
                      style: TextStyle(
                        fontFamily: 'montserrat',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 1,
                color: Colors.grey, // Customize the color of the line
                margin: EdgeInsets.symmetric(horizontal: 0),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Single Room',
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/cabinet.png'),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cabinet',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    ImageIcon(
                      AssetImage('images/bed.png'),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '1 Double Deck Bed',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/aircon.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Aircon',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/shower.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CR',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/emergency.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Emergency Exit',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Double Room',
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/cabinet.png'),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Cabinet',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    ImageIcon(
                      AssetImage('images/bed.png'),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '1 Double Deck Bed',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/aircon.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Aircon',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/shower.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'CR',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        ImageIcon(
                          AssetImage('images/emergency.png'),
                          size: 18,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Emergency Exit',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Opacity(
              opacity: 0.5,
              child: Container(
                height: 1,
                color: Colors.grey, // Customize the color of the line
                margin: EdgeInsets.symmetric(horizontal: 0),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 15,
                ),
                child: Text(
                  'Property',
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/Wifi.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Wi-Fi',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    ImageIcon(
                      AssetImage('images/Workspace.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Reception',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/utensils.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Dining Area',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 68,
                    ),
                    ImageIcon(
                      AssetImage('images/wash.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Laundry',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/toilet.png'),
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Common CR',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    ImageIcon(
                      AssetImage('images/emergency.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Emergency Exit',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 23,
                ),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage('images/movie.png'),
                      size: 25,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'CCTV',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    ImageIcon(
                      AssetImage('images/ext.png'),
                      size: 30,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Free Extinguisher',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'montserrat',
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Opacity(
              opacity: 0.3,
              child: Container(
                height: 1,
                color: Colors.grey, // Customize the color of the line
                margin: EdgeInsets.symmetric(horizontal: 0),
              ),
            ),
            // GoogleMap(

            //   onMapCreated: _onMapCreated,

            //   initialCameraPosition: const CameraPosition(
            //     target: LatLng(37.7749, -122.4194),
            //     zoom: 15.0,
            //   ),

            // ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Reviews',
                      style: TextStyle(
                        fontFamily: 'montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Row(
                      children: [
                        const Text(
                          'How others rated this apartment',
                          style: TextStyle(
                            fontSize: 11,
                            fontFamily: 'montserrat',
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Container(
                          height: 30,
                          child: FilledButton(
                            onPressed: () {},
                            child: Text('Add Review'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff232A3D),
                              ), // Set the desired background color
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //review box

            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemCount: 3,
                    itemBuilder: (context, pageIndex) {
                      //  int startIndex = pageIndex * 2;
                      //    int endIndex = startIndex + 1;
                      //     if (endIndex >= colors.length) {
                      //       endIndex = colors.length - 1;
                      //     }
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Container(
                              width: 190,
                              height: 190,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 20,
                                          backgroundImage: AssetImage(
                                              profileImages[pageIndex]),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Positioned(
                                          top: 60,
                                          left: 10,
                                          child: Text(
                                            userNames[pageIndex],
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'montserrat'),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      top: 70,
                                    ),
                                    child: Text(
                                      reviews[pageIndex],
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'montserrat',
                                      
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            width: 190,
                            height: 190,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.5),
                                  width: 2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Positioned(
                                  top: 10,
                                  left: 10,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: AssetImage(
                                            profileImages2[pageIndex]),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Positioned(
                                        top: 60,
                                        left: 10,
                                        child: Text(
                                          userNames2[pageIndex],
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'montserrat'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 15,
                                      top: 70,
                                    ),
                                    child: Text(
                                      reviews[pageIndex],
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontFamily: 'montserrat',
                                      
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),

                //dots
                // SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Container(
                //       child: Row(
                //         children: List.generate(
                //           3,
                //           (index) => Container(
                //             width: 5,
                //             height: 5,
                //             margin: EdgeInsets.symmetric(horizontal: 5),
                //             decoration: BoxDecoration(
                //               shape: BoxShape.circle,
                //               color: index == _currentPage
                //                   ? Color(0xff232A3D)
                //                   : Colors.grey.withOpacity(0.5),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ],
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: previousPage,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Color(0xff232A3D),
                      ),
                    ),
                    SizedBox(width: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Row(
                            children: List.generate(
                              3,
                              (index) => Container(
                                width: 5,
                                height: 5,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == _currentPage
                                      ? Color(0xff232A3D)
                                      : Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: nextPage,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: Color(0xff232A3D),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
