import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 90),
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset(
                'images/stars.png',
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Transform.translate(
              offset:
                  const Offset(0, 90), // Adjust the vertical offset as needed
              child: const Text(
                "Explore the app",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'poppins',
                    color:  Color(0xFF232A3D),),
              ),
            ),
            Transform.translate(
              offset:
                  const Offset(0, 110), // Adjust the vertical offset as needed
              child: const Text(
                'Now your search for your second home \nis in one place!',
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'poppins',
                  
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color: const Color(0xFF232A3D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 3,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF232A3D),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Skip for now',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                ),
              ),
            ),
            const Spacer(),
          ],
        )),
      ),
    );
  }
}
