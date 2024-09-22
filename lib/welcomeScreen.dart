import 'package:flutter/material.dart';
import 'package:fluttertask1/loginScreen.dart';
import 'package:fluttertask1/registerScreen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // constraints: const BoxConstraints(
        //   maxWidth: double.infinity,
        //   maxHeight: double.infinity,
        // ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundImage.png"),
              fit: BoxFit.cover),
        ),

        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              // margin: const EdgeInsets.only(bottom: 10),
              child: Image.asset("images/welcomeImage.png"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  Discover Your\nDream Job here",
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 35,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 21),
            const Text(
              "Explore all the existing job roles based on your\ninterest and study major",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(width: 70,height: 70,),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // visualDensity:
                  //     const VisualDensity(horizontal: 4, vertical: 3),
                  height: 60,
                  minWidth: 140,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
                  },
                  color: Colors.indigo,
                  textColor: Colors.white,
                  splashColor: Colors.white,

                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 40),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  // visualDensity:
                  //     const VisualDensity(horizontal: 1, vertical: 3),
                  height: 60,
                  minWidth: 140,
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  },

                  color: Colors.indigo,
                  textColor: Colors.white,
                  splashColor: Colors.white,
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
