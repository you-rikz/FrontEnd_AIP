import 'package:flutter/material.dart';
import 'package:front_end_apt_iba_pa/pages/appointment.dart';
import 'package:front_end_apt_iba_pa/pages/fav_page.dart';
import 'package:front_end_apt_iba_pa/pages/login_page.dart';
import 'package:front_end_apt_iba_pa/pages/manage.dart';
import 'package:front_end_apt_iba_pa/pages/owner_home.dart';
import 'package:front_end_apt_iba_pa/pages/owner_prop.dart';
import 'package:front_end_apt_iba_pa/pages/register_page.dart';
import 'package:front_end_apt_iba_pa/pages/search_result.dart';
import 'package:front_end_apt_iba_pa/pages/side_bar.dart';
import 'package:front_end_apt_iba_pa/pages/splash_page.dart';
import 'package:front_end_apt_iba_pa/pages/view_prop.dart';
import 'package:front_end_apt_iba_pa/pages/welcome_screen.dart';
import 'package:front_end_apt_iba_pa/user_side/about.dart';
import 'package:front_end_apt_iba_pa/user_side/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}


