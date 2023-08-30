import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEE7ED),
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
            ),
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
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    'images/header.jpg',
                  ),
                ),
                Positioned(
                  left: 5.0,
                  top: 20,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text(
                      'Your Second Home Search \nMade Easy',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 25.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Text(
                  'View Appointments',
                  style: TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff232A3D),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    'May 22, 2023',
                    style: TextStyle(
                      fontFamily: 'montserrat',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff232A3D),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black.withOpacity(0.2), // Set the stroke color
                  width: 1.0,

                  // Set the stroke width
                ),
              ),
              child: TableCalendar(
                firstDay: DateTime.utc(2023, 1, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(
                    () {
                      _calendarFormat = format;
                    },
                  );
                },
                onPageChanged: (focusedDay) {
                  setState(
                    () {
                      _focusedDay = focusedDay;
                    },
                  );
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(
                    () {
                      _selectedDay = selectedDay;
                      _focusedDay = focusedDay;
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 1500,
              decoration: BoxDecoration(
                color: Color(0xffF9FDFF),
                border: Border.all(
                  color: Colors.black.withOpacity(0.2), // Set the stroke color
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 50,
                ),
                child: Column(
                  children: [
                    //Morning
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          width: 50,
                          height: 50,
                          child: Image.asset('images/morning.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Morning',
                          style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Color(0xff232A3D),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 120,
                      ),
                      child: Text(
                        '8:00 AM to 11:30 AM',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 20),
                    //time button
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '8:00 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '8:30 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '9:00 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '9:30 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //2nd time button
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '10:00 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '10:30 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '11:00 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 90, // Adjust the button width
                              child: TextButton(
                                onPressed: () {
                                  // Button 1 action
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                          color: Colors.black.withOpacity(0.2),
                                          width: 1.0)),
                                ),
                                child: Text(
                                  '11:30 AM',
                                  style: TextStyle(
                                    fontFamily: 'montserrat',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Divider(),
                    SizedBox(
                      height: 50,
                    ),
                    //Afternoon
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                          ),
                          width: 50,
                          height: 50,
                          child: Image.asset('images/afternoon.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Afternoon',
                          style: TextStyle(
                            fontFamily: 'montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            color: Color(0xff232A3D),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 120,
                      ),
                      child: Text(
                        '12:30 PM to 6:00 PM',
                        style: TextStyle(
                            fontFamily: 'Montserrat', color: Colors.grey),
                      ),
                    ),

                    const SizedBox(height: 25),
                    //time button afternoon
                    Stack(
                      children: [
                        Image.asset(
                          'images/wavebg.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Positioned.fill(
                          top: 30,
                          child: Image.asset(
                            'images/buildingbg.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        //Time Button Afternoon
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '12:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '1:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '1:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '2:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '2:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '3:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '3:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '4:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '4:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '5:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '5:30 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  width: 90, // Adjust the button width
                                  child: TextButton(
                                    onPressed: () {
                                      // Button 1 action
                                    },
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          side: BorderSide(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              width: 1.0)),
                                    ),
                                    child: Text(
                                      '6:00 PM',
                                      style: TextStyle(
                                        fontFamily: 'montserrat',
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(
                          height: 50,
                        ),
                        // Container(
                        //   width: double.infinity,
                        //   height: 500,
                        //   decoration: BoxDecoration(
                        //     color: Colors.blue,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
