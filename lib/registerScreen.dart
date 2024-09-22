import 'package:flutter/material.dart';
import 'package:fluttertask1/loginScreen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // padding: const EdgeInsets.all(50),

        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundImage.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const Text(
              "Create Account",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            const Text(
              "Create an account so you can explore all the\nexisting jobs",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: Email,
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: Password,
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: TextFormField(
                controller: confirmPassword,
                decoration: InputDecoration(
                  hintText: "Confirm Password",
                  hintStyle: TextStyle(color: Colors.grey[500]),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white54),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.indigo,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  fillColor: Colors.grey[50],
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
            const SizedBox(height: 47),
            MaterialButton(
              elevation: 20,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              height: 50,
              minWidth: 325,
              onPressed: () {},
              color: Colors.indigo,
              textColor: Colors.white,
              child: const Text(
                "Sign up",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 25),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const LoginScreen()));
              },
              child: const Text(
                "Already have an account",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Or continue with",
              style: TextStyle(
                color: Colors.indigo,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Icon(
                    Icons.g_mobiledata_sharp,
                    size: 22,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[50],
                    borderRadius: BorderRadius.circular(10),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Icon(
                    Icons.facebook,
                    size: 20,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(8),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[50],
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,
                    ),
                    child: const Icon(
                      Icons.apple,
                      size: 20,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
